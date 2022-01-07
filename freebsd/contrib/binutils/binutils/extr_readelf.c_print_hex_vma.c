
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int putchar (char) ;

__attribute__((used)) static int
print_hex_vma (bfd_vma vma)
{
  char buf[32];
  char *bufp = buf;
  int nc;

  do
    {
      char digit = '0' + (vma & 0x0f);
      if (digit > '9')
 digit += 'a' - '0' - 10;
      *bufp++ = digit;
      vma >>= 4;
    }
  while (vma != 0);
  nc = bufp - buf;

  while (bufp > buf)
    putchar (*--bufp);
  return nc;
}
