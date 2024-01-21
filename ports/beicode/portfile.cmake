vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO yelandgit/beicode-public
  REF 1c08e6589fbf7ac4ca7f0e014e0b0057818b1b20
  SHA512 af5ddd9894037e9fd9c02ee4298b156dbeec4af0bc8c5536a86ef634a27f5ca3a1ccf075c775c268ac4e459ca1e117421d8322c67ae946b719361986f26691cb
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright
) 
