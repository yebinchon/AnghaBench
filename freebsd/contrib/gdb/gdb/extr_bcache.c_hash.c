
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
hash(const void *addr, int length)
{
  const unsigned char *k, *e;
  unsigned long h;

  k = (const unsigned char *)addr;
  e = k+length;
  for (h=0; k< e;++k)
  {
    h *=16777619;
    h ^= *k;
  }
  return (h);
}
