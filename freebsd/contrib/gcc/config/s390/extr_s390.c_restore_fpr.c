
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int DFmode ;
 int emit_move_insn (int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int get_frame_alias_set () ;
 int plus_constant (int ,int) ;
 int set_mem_alias_set (int ,int ) ;

__attribute__((used)) static rtx
restore_fpr (rtx base, int offset, int regnum)
{
  rtx addr;
  addr = gen_rtx_MEM (DFmode, plus_constant (base, offset));
  set_mem_alias_set (addr, get_frame_alias_set ());

  return emit_move_insn (gen_rtx_REG (DFmode, regnum), addr);
}
