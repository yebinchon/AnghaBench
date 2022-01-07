
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int RTX_FRAME_RELATED_P ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 int Pmode ;
 int emit_insn (int ) ;
 int gen_push (int ) ;
 int gen_rtx_REG (int ,unsigned int) ;
 scalar_t__ ix86_save_reg (unsigned int,int) ;

__attribute__((used)) static void
ix86_emit_save_regs (void)
{
  unsigned int regno;
  rtx insn;

  for (regno = FIRST_PSEUDO_REGISTER; regno-- > 0; )
    if (ix86_save_reg (regno, 1))
      {
 insn = emit_insn (gen_push (gen_rtx_REG (Pmode, regno)));
 RTX_FRAME_RELATED_P (insn) = 1;
      }
}
