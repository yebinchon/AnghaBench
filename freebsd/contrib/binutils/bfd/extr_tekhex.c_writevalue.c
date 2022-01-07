
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int * digs ;

__attribute__((used)) static void
writevalue (char **dst, bfd_vma value)
{
  char *p = *dst;
  int len;
  int shift;

  for (len = 8, shift = 28; shift; shift -= 4, len--)
    {
      if ((value >> shift) & 0xf)
 {
   *p++ = len + '0';
   while (len)
     {
       *p++ = digs[(value >> shift) & 0xf];
       shift -= 4;
       len--;
     }
   *dst = p;
   return;

 }
    }
  *p++ = '1';
  *p++ = '0';
  *dst = p;
}
