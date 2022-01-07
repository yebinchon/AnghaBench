
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __chk_fail () ;

char *
__strcat_chk (char *__restrict__ dest, const char *__restrict__ src,
              size_t slen)
{
  char *s1 = dest;
  const char *s2 = src;
  char c;

  do
    {
      if (slen-- == 0)
        __chk_fail ();
      c = *s1++;
    }
  while (c != '\0');

  ++slen;
  s1 -= 2;

  do
    {
      if (slen-- == 0)
        __chk_fail ();
      c = *s2++;
      *++s1 = c;
    }
  while (c != '\0');

  return dest;
}
