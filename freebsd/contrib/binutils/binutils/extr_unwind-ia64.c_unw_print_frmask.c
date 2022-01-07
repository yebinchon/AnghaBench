
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
unw_print_frmask (char *cp, unsigned int mask)
{
  int sep = 0;
  int i;

  for (i = 0; i < 20; ++i)
    {
      if (mask & 1)
 {
   if (sep)
     *cp++ = ',';
   *cp++ = 'f';
   if (i < 4)
     *cp++ = i + 2 + '0';
   else
     {
       *cp++ = (i + 2) / 10 + 1 + '0';
       *cp++ = (i + 2) % 10 + '0';
     }
   sep = 1;
 }
      mask >>= 1;
    }
  *cp = '\0';
}
