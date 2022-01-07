
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_ADDRESSES (int ) ;
 int INSN_UID (int ) ;
 int asm_fprintf (int ,char*,int ) ;
 int asm_out_file ;
 scalar_t__ flag_print_asm_name ;

void
thumb_final_prescan_insn (rtx insn)
{
  if (flag_print_asm_name)
    asm_fprintf (asm_out_file, "%@ 0x%04x\n",
   INSN_ADDRESSES (INSN_UID (insn)));
}
