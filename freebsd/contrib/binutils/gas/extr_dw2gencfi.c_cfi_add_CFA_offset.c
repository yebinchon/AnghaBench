
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int offsetT ;


 unsigned int DWARF2_CIE_DATA_ALIGNMENT ;
 int DW_CFA_offset ;
 int _ (char*) ;
 int as_bad (int ,unsigned int) ;
 int assert (int) ;
 int cfi_add_CFA_insn_reg_offset (int ,unsigned int,unsigned int) ;

void
cfi_add_CFA_offset (unsigned regno, offsetT offset)
{
  unsigned int abs_data_align;

  assert (DWARF2_CIE_DATA_ALIGNMENT != 0);
  cfi_add_CFA_insn_reg_offset (DW_CFA_offset, regno, offset);

  abs_data_align = (DWARF2_CIE_DATA_ALIGNMENT < 0
      ? -DWARF2_CIE_DATA_ALIGNMENT : DWARF2_CIE_DATA_ALIGNMENT);
  if (offset % abs_data_align)
    as_bad (_("register save offset not a multiple of %u"), abs_data_align);
}
