
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PTR ;



PTR
memchr (register const PTR src_void, int c, size_t length)
{
  const unsigned char *src = (const unsigned char *)src_void;

  while (length-- > 0)
  {
    if (*src == c)
     return (PTR)src;
    src++;
  }
  return ((void*)0);
}
