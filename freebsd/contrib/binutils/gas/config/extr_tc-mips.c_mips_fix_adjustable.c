
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fx_r_type; int * fx_addsy; int * fx_subsy; } ;
typedef TYPE_1__ fixS ;
struct TYPE_5__ {int flags; } ;


 scalar_t__ BFD_RELOC_LO16 ;
 scalar_t__ BFD_RELOC_MIPS16_LO16 ;
 scalar_t__ BFD_RELOC_VTABLE_ENTRY ;
 scalar_t__ BFD_RELOC_VTABLE_INHERIT ;
 scalar_t__ HAVE_IN_PLACE_ADDENDS ;
 scalar_t__ IS_ELF ;
 int SEC_MERGE ;
 scalar_t__ STO_MIPS16 ;
 scalar_t__ S_GET_OTHER (int *) ;
 TYPE_3__* S_GET_SEGMENT (int *) ;
 scalar_t__ reloc_needs_lo_p (scalar_t__) ;
 scalar_t__* symbol_get_tc (int *) ;

int
mips_fix_adjustable (fixS *fixp)
{
  if (fixp->fx_r_type == BFD_RELOC_VTABLE_INHERIT
      || fixp->fx_r_type == BFD_RELOC_VTABLE_ENTRY)
    return 0;

  if (fixp->fx_addsy == ((void*)0))
    return 1;
  if ((fixp->fx_r_type == BFD_RELOC_LO16
       || fixp->fx_r_type == BFD_RELOC_MIPS16_LO16
       || reloc_needs_lo_p (fixp->fx_r_type))
      && HAVE_IN_PLACE_ADDENDS
      && (S_GET_SEGMENT (fixp->fx_addsy)->flags & SEC_MERGE) != 0)
    return 0;
  return 1;
}
