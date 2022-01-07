
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int BLKmode ;
 int GEN_INT (int) ;
 scalar_t__ HAVE_store_multiple ;
 int delete_insns_since (scalar_t__) ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,int ) ;
 int gcc_assert (scalar_t__) ;
 int gen_rtx_REG (int ,int) ;
 scalar_t__ gen_store_multiple (scalar_t__,int ,int ) ;
 scalar_t__ get_last_insn () ;
 scalar_t__ operand_subword (scalar_t__,int,int,int ) ;
 int word_mode ;

void
move_block_from_reg (int regno, rtx x, int nregs)
{
  int i;

  if (nregs == 0)
    return;
  for (i = 0; i < nregs; i++)
    {
      rtx tem = operand_subword (x, i, 1, BLKmode);

      gcc_assert (tem);

      emit_move_insn (tem, gen_rtx_REG (word_mode, regno + i));
    }
}
