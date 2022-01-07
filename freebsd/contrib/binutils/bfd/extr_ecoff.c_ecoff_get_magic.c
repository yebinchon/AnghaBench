
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int ALPHA_MAGIC ;
 int MIPS_MAGIC_BIG ;
 int MIPS_MAGIC_BIG2 ;
 int MIPS_MAGIC_BIG3 ;
 int MIPS_MAGIC_LITTLE ;
 int MIPS_MAGIC_LITTLE2 ;
 int MIPS_MAGIC_LITTLE3 ;
 int abort () ;


 int bfd_big_endian (int *) ;
 int bfd_get_arch (int *) ;
 int bfd_get_mach (int *) ;




__attribute__((used)) static int
ecoff_get_magic (bfd *abfd)
{
  int big, little;

  switch (bfd_get_arch (abfd))
    {
    case 131:
      switch (bfd_get_mach (abfd))
 {
 default:
 case 0:
 case 130:
   big = MIPS_MAGIC_BIG;
   little = MIPS_MAGIC_LITTLE;
   break;

 case 128:
   big = MIPS_MAGIC_BIG2;
   little = MIPS_MAGIC_LITTLE2;
   break;

 case 129:
   big = MIPS_MAGIC_BIG3;
   little = MIPS_MAGIC_LITTLE3;
   break;
 }

      return bfd_big_endian (abfd) ? big : little;

    case 132:
      return ALPHA_MAGIC;

    default:
      abort ();
      return 0;
    }
}
