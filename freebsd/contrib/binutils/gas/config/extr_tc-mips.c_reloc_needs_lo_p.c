
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_reloc_code_real_type ;
typedef int bfd_boolean ;


 scalar_t__ BFD_RELOC_HI16_S ;
 scalar_t__ BFD_RELOC_MIPS16_HI16_S ;
 scalar_t__ BFD_RELOC_MIPS_GOT16 ;
 scalar_t__ HAVE_IN_PLACE_ADDENDS ;
 scalar_t__ VXWORKS_PIC ;
 scalar_t__ mips_pic ;

__attribute__((used)) static inline bfd_boolean
reloc_needs_lo_p (bfd_reloc_code_real_type reloc)
{
  return (HAVE_IN_PLACE_ADDENDS
   && (reloc == BFD_RELOC_HI16_S
       || reloc == BFD_RELOC_MIPS16_HI16_S


       || (reloc == BFD_RELOC_MIPS_GOT16 && mips_pic != VXWORKS_PIC)));
}
