
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FIRST_PSEUDO_REGISTER ;
 size_t GENERAL_REGS ;
 int Pmode ;
 int SImode ;
 scalar_t__ TEST_HARD_REG_BIT (int ,unsigned int) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int * fixed_regs ;
 int gen_raw_REG (int ,int) ;
 int gen_rtx_MEM (int ,int ) ;
 int get_insns () ;
 int * reg_class_contents ;
 void* seq_cost (int ) ;
 int start_sequence () ;
 int target_avail_regs ;
 int target_pres_cost ;
 int target_res_regs ;
 int target_small_cost ;
 void* target_spill_cost ;
 int validize_mem (int ) ;

void
init_set_costs (void)
{
  rtx seq;
  rtx reg1 = gen_raw_REG (SImode, FIRST_PSEUDO_REGISTER);
  rtx reg2 = gen_raw_REG (SImode, FIRST_PSEUDO_REGISTER + 1);
  rtx addr = gen_raw_REG (Pmode, FIRST_PSEUDO_REGISTER + 2);
  rtx mem = validize_mem (gen_rtx_MEM (SImode, addr));
  unsigned i;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (TEST_HARD_REG_BIT (reg_class_contents[GENERAL_REGS], i)
 && !fixed_regs[i])
      target_avail_regs++;

  target_res_regs = 3;



  start_sequence ();
  emit_move_insn (reg1, reg2);
  seq = get_insns ();
  end_sequence ();
  target_small_cost = seq_cost (seq);
  target_pres_cost = 2 * target_small_cost;

  start_sequence ();
  emit_move_insn (mem, reg1);
  emit_move_insn (reg2, mem);
  seq = get_insns ();
  end_sequence ();
  target_spill_cost = seq_cost (seq);
}
