
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int print_mode ;
typedef int bfd_vma ;
 int _bfd_int64_low (int) ;
 scalar_t__ is_32bit_elf ;
 int print_dec_vma (int,int) ;
 int print_hex_vma (int) ;
 int printf (char*,...) ;
 int printf_vma (int) ;

__attribute__((used)) static int
print_vma (bfd_vma vma, print_mode mode)
{



    {
      switch (mode)
 {
 case 132:
   return printf ("0x%8.8lx", (unsigned long) vma);

 case 130:
   return printf ("%8.8lx", (unsigned long) vma);

 case 133:
   if (vma <= 99999)
     return printf ("%5ld", (long) vma);


 case 129:
   return printf ("0x%lx", (unsigned long) vma);

 case 131:
   return printf ("%lx", (unsigned long) vma);

 case 134:
   return printf ("%ld", (unsigned long) vma);

 case 128:
   return printf ("%lu", (unsigned long) vma);
 }
    }
  return 0;
}
