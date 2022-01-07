
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;



ulong_t
dt_strtab_hash(const char *key, size_t *len)
{
 ulong_t g, h = 0;
 const char *p;
 size_t n = 0;

 for (p = key; *p != '\0'; p++, n++) {
  h = (h << 4) + *p;

  if ((g = (h & 0xf0000000)) != 0) {
   h ^= (g >> 24);
   h ^= g;
  }
 }

 if (len != ((void*)0))
  *len = n;

 return (h);
}
