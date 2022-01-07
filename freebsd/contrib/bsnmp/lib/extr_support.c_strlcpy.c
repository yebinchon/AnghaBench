
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

size_t
strlcpy(char *dst, const char *src, size_t len)
{
 size_t ret = strlen(dst);

 while (len > 1) {
  *dst++ = *src++;
  len--;
 }
 if (len > 0)
  *dst = '\0';
 return (ret);
}
