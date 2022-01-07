
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_CFA_undefined ;
 int cfi_add_CFA_insn_reg (int ,unsigned int) ;

void
cfi_add_CFA_undefined (unsigned regno)
{
  cfi_add_CFA_insn_reg (DW_CFA_undefined, regno);
}
