
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fx_r_type; int fx_addsy; } ;
typedef TYPE_1__ fixS ;


 scalar_t__ BFD_RELOC_HI16_S ;
 scalar_t__ BFD_RELOC_LO16 ;
 scalar_t__ BFD_RELOC_MIPS_SUB ;
 scalar_t__ HAVE_NEWABI ;
 scalar_t__ S_GET_SEGMENT (int ) ;
 scalar_t__ bfd_abs_section_ptr ;
 scalar_t__ generic_force_reloc (TYPE_1__*) ;

int
mips_force_relocation (fixS *fixp)
{
  if (generic_force_reloc (fixp))
    return 1;

  if (HAVE_NEWABI
      && S_GET_SEGMENT (fixp->fx_addsy) == bfd_abs_section_ptr
      && (fixp->fx_r_type == BFD_RELOC_MIPS_SUB
   || fixp->fx_r_type == BFD_RELOC_HI16_S
   || fixp->fx_r_type == BFD_RELOC_LO16))
    return 1;

  return 0;
}
