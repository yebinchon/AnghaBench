
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strlcpy(char *dst, const char *src, size_t siz)
{
 char *d = dst;
 const char *s = src;
 size_t n = siz;

 if (!dst || !src)
  return 0;


 if (n != 0 && --n != 0) {
  do {
   if ((*d++ = *s++) == 0)
    break;
  } while (--n != 0);
 }


 if (n == 0) {
  if (siz != 0)
   *d = '\0';
  while (*s++)
   ;
 }

 return(s - src - 1);
}
