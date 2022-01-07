
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;



__attribute__((used)) static ulong_t
ctf_hash_compute(const char *key, size_t len)
{
 ulong_t g, h = 0;
 const char *p, *q = key + len;
 size_t n = 0;

 for (p = key; p < q; p++, n++) {
  h = (h << 4) + *p;

  if ((g = (h & 0xf0000000)) != 0) {
   h ^= (g >> 24);
   h ^= g;
  }
 }

 return (h);
}
