
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* ECOFF_LITTLE_FORMAT ;
 int HAVE_64BIT_OBJECTS ;
 int HAVE_NEWABI ;
 int OUTPUT_FLAVOR ;
 int abort () ;



 int target_big_endian ;

const char *
mips_target_format (void)
{
  switch (OUTPUT_FLAVOR)
    {
    case 129:
      return target_big_endian ? "ecoff-bigmips" : ECOFF_LITTLE_FORMAT;
    case 130:
      return "pe-mips";
    case 128:
      return (target_big_endian
       ? (HAVE_64BIT_OBJECTS
   ? "elf64-bigmips"
   : (HAVE_NEWABI
      ? "elf32-nbigmips" : "elf32-bigmips"))
       : (HAVE_64BIT_OBJECTS
   ? "elf64-littlemips"
   : (HAVE_NEWABI
      ? "elf32-nlittlemips" : "elf32-littlemips")));

    default:
      abort ();
      return ((void*)0);
    }
}
