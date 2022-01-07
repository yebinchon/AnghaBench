
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int containsMergeSpecifier(const char *FilenamePat, int I) {
  return (FilenamePat[I] == 'm' ||
          (FilenamePat[I] >= '1' && FilenamePat[I] <= '9' &&


           FilenamePat[I + 1] == 'm'));
}
