
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CODE_64BIT ;
 int cfi_add_CFA_def_cfa (unsigned int,int ) ;
 int cfi_add_CFA_offset (int ,int ) ;
 scalar_t__ flag_code ;
 unsigned int tc_x86_regname_to_dw2regnum (char*) ;
 int x86_cie_data_alignment ;
 int x86_dwarf2_return_column ;

void
tc_x86_frame_initial_instructions (void)
{
  static unsigned int sp_regno;

  if (!sp_regno)
    sp_regno = tc_x86_regname_to_dw2regnum (flag_code == CODE_64BIT
         ? "rsp" : "esp");

  cfi_add_CFA_def_cfa (sp_regno, -x86_cie_data_alignment);
  cfi_add_CFA_offset (x86_dwarf2_return_column, x86_cie_data_alignment);
}
