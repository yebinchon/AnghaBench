
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;



__attribute__((used)) static hashval_t
hashmem (const void *p_p, size_t sz)
{
  const unsigned char *p = (const unsigned char *)p_p;
  size_t i;
  hashval_t h;

  h = 0;
  for (i = 0; i < sz; i++)
    h = h * 67 - (*p++ - 113);
  return h;
}
