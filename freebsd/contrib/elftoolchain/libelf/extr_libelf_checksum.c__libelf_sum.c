
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
_libelf_sum(unsigned long c, const unsigned char *s, size_t size)
{
 if (s == ((void*)0) || size == 0)
  return (c);

 while (size--)
  c += *s++;

 return (c);
}
