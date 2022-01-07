
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int RTX_FRAME_RELATED_P ;
typedef int HOST_WIDE_INT ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 int Pmode ;
 scalar_t__ UNITS_PER_WORD ;
 int adjust_address (int ,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,unsigned int) ;
 scalar_t__ ix86_save_reg (unsigned int,int) ;

__attribute__((used)) static void
ix86_emit_save_regs_using_mov (rtx pointer, HOST_WIDE_INT offset)
{
  unsigned int regno;
  rtx insn;

  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if (ix86_save_reg (regno, 1))
      {
 insn = emit_move_insn (adjust_address (gen_rtx_MEM (Pmode, pointer),
            Pmode, offset),
          gen_rtx_REG (Pmode, regno));
 RTX_FRAME_RELATED_P (insn) = 1;
 offset += UNITS_PER_WORD;
      }
}
