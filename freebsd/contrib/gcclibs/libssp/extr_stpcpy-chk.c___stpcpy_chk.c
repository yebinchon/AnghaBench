
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __chk_fail () ;
 char* memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *
__stpcpy_chk (char *__restrict__ dest, const char *__restrict__ src,
              size_t slen)
{
  size_t len = strlen (src);
  if (len >= slen)
    __chk_fail ();
  return memcpy (dest, src, len + 1) + len;
}
