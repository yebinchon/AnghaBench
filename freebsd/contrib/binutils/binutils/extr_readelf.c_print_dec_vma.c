
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef scalar_t__ bfd_signed_vma ;


 int putchar (char) ;

__attribute__((used)) static int
print_dec_vma (bfd_vma vma, int is_signed)
{
  char buf[40];
  char *bufp = buf;
  int nc = 0;

  if (is_signed && (bfd_signed_vma) vma < 0)
    {
      vma = -vma;
      putchar ('-');
      nc = 1;
    }

  do
    {
      *bufp++ = '0' + vma % 10;
      vma /= 10;
    }
  while (vma != 0);
  nc += bufp - buf;

  while (bufp > buf)
    putchar (*--bufp);
  return nc;
}
