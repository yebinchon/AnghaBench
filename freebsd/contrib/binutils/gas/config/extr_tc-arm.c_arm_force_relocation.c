
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fix {scalar_t__ fx_r_type; scalar_t__ fx_addsy; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ BFD_RELOC_32 ;
 scalar_t__ BFD_RELOC_ARM_ADRL_IMMEDIATE ;
 scalar_t__ BFD_RELOC_ARM_ALU_PC_G0_NC ;
 scalar_t__ BFD_RELOC_ARM_IMMEDIATE ;
 scalar_t__ BFD_RELOC_ARM_LDC_SB_G2 ;
 scalar_t__ BFD_RELOC_ARM_LDR_PC_G0 ;
 scalar_t__ BFD_RELOC_ARM_OFFSET_IMM ;
 scalar_t__ BFD_RELOC_ARM_T32_ADD_IMM ;
 scalar_t__ BFD_RELOC_ARM_T32_ADD_PC12 ;
 scalar_t__ BFD_RELOC_ARM_T32_IMM12 ;
 scalar_t__ BFD_RELOC_ARM_T32_IMMEDIATE ;
 scalar_t__ BFD_RELOC_RVA ;
 int BSF_FUNCTION ;
 int generic_force_reloc (struct fix*) ;
 TYPE_1__* symbol_get_bfdsym (scalar_t__) ;

int
arm_force_relocation (struct fix * fixp)
{






  if (fixp->fx_r_type == BFD_RELOC_ARM_IMMEDIATE
      || fixp->fx_r_type == BFD_RELOC_ARM_OFFSET_IMM
      || fixp->fx_r_type == BFD_RELOC_ARM_ADRL_IMMEDIATE
      || fixp->fx_r_type == BFD_RELOC_ARM_T32_ADD_IMM
      || fixp->fx_r_type == BFD_RELOC_ARM_T32_IMMEDIATE
      || fixp->fx_r_type == BFD_RELOC_ARM_T32_IMM12
      || fixp->fx_r_type == BFD_RELOC_ARM_T32_ADD_PC12)
    return 0;


  if ((fixp->fx_r_type >= BFD_RELOC_ARM_ALU_PC_G0_NC
       && fixp->fx_r_type <= BFD_RELOC_ARM_LDC_SB_G2)
      || fixp->fx_r_type == BFD_RELOC_ARM_LDR_PC_G0)
    return 1;


  if (fixp->fx_r_type == BFD_RELOC_32
      && fixp->fx_addsy
      && (symbol_get_bfdsym (fixp->fx_addsy)->flags & BSF_FUNCTION))
    return 1;

  return generic_force_reloc (fixp);
}
