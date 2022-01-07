
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;



int
hash_name(int nbuckets, const char *name)
{
 const char *c;
 ulong_t g;
 int h = 0;

 for (c = name; *c; c++) {
  h = (h << 4) + *c;
  if ((g = (h & 0xf0000000)) != 0) {
   h ^= (g >> 24);
   h ^= g;
  }
 }

 return (h % nbuckets);
}
