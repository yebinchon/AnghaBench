
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;


 int ZFS_FRU_HASH_SIZE ;

__attribute__((used)) static size_t
fru_strhash(const char *key)
{
 ulong_t g, h = 0;
 const char *p;

 for (p = key; *p != '\0'; p++) {
  h = (h << 4) + *p;

  if ((g = (h & 0xf0000000)) != 0) {
   h ^= (g >> 24);
   h ^= g;
  }
 }

 return (h % ZFS_FRU_HASH_SIZE);
}
