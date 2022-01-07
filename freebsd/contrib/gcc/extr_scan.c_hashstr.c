
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int
hashstr (const char *str, unsigned int len)
{
  unsigned int n = len;
  unsigned int r = 0;
  const unsigned char *s = (const unsigned char *) str;

  do
    r = r * 67 + (*s++ - 113);
  while (--n);
  return r + len;
}
