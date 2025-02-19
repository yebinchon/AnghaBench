
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int RTX_FRAME_RELATED_P ;


 int DFmode ;
 int DImode ;
 int SFmode ;
 int SImode ;
 int SORR_SAVE ;
 scalar_t__ TARGET_ARCH64 ;
 int * call_used_regs ;
 int emit_move_insn (int ,int ) ;
 int gen_rtx_MEM (int,int ) ;
 int gen_rtx_REG (int,int) ;
 int plus_constant (int ,int) ;
 scalar_t__* regs_ever_live ;
 int set_mem_alias_set (int ,int ) ;
 int sparc_sr_alias_set ;

__attribute__((used)) static int
save_or_restore_regs (int low, int high, rtx base, int offset, int action)
{
  rtx mem, insn;
  int i;

  if (TARGET_ARCH64 && high <= 32)
    {
      for (i = low; i < high; i++)
 {
   if (regs_ever_live[i] && ! call_used_regs[i])
     {
       mem = gen_rtx_MEM (DImode, plus_constant (base, offset));
       set_mem_alias_set (mem, sparc_sr_alias_set);
       if (action == SORR_SAVE)
  {
    insn = emit_move_insn (mem, gen_rtx_REG (DImode, i));
    RTX_FRAME_RELATED_P (insn) = 1;
  }
       else
  emit_move_insn (gen_rtx_REG (DImode, i), mem);
       offset += 8;
     }
 }
    }
  else
    {
      for (i = low; i < high; i += 2)
 {
   bool reg0 = regs_ever_live[i] && ! call_used_regs[i];
   bool reg1 = regs_ever_live[i+1] && ! call_used_regs[i+1];
   enum machine_mode mode;
   int regno;

   if (reg0 && reg1)
     {
       mode = i < 32 ? DImode : DFmode;
       regno = i;
     }
   else if (reg0)
     {
       mode = i < 32 ? SImode : SFmode;
       regno = i;
     }
   else if (reg1)
     {
       mode = i < 32 ? SImode : SFmode;
       regno = i + 1;
       offset += 4;
     }
   else
     continue;

   mem = gen_rtx_MEM (mode, plus_constant (base, offset));
   set_mem_alias_set (mem, sparc_sr_alias_set);
   if (action == SORR_SAVE)
     {
       insn = emit_move_insn (mem, gen_rtx_REG (mode, regno));
       RTX_FRAME_RELATED_P (insn) = 1;
     }
   else
     emit_move_insn (gen_rtx_REG (mode, regno), mem);


   offset = (offset + 7) & -8;
 }
    }

  return offset;
}
