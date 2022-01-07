
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reload {scalar_t__ in; scalar_t__ in_reg; scalar_t__ out_reg; scalar_t__ reg_rtx; scalar_t__ when_needed; scalar_t__ out; } ;
struct insn_chain {scalar_t__ insn; } ;
typedef scalar_t__ rtx ;


 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ MEM_P (scalar_t__) ;
 size_t REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ RELOAD_FOR_INPUT ;
 scalar_t__ TEST_HARD_REG_BIT (int ,size_t) ;
 scalar_t__ dead_or_set_p (scalar_t__,scalar_t__) ;
 int delete_output_reload (scalar_t__,int,size_t) ;
 int emit_input_reload_insns (struct insn_chain*,scalar_t__,scalar_t__,int) ;
 scalar_t__ optimize ;
 size_t* reg_reloaded_contents ;
 int reg_reloaded_valid ;
 scalar_t__* regno_reg_rtx ;
 scalar_t__* reload_inherited ;
 scalar_t__* reload_override_in ;
 size_t* reload_spill_index ;
 scalar_t__ rld ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__* spill_reg_store ;
 scalar_t__* spill_reg_stored_to ;

__attribute__((used)) static void
do_input_reload (struct insn_chain *chain, struct reload *rl, int j)
{
  rtx insn = chain->insn;
  rtx old = (rl->in && MEM_P (rl->in)
      ? rl->in_reg : rl->in);

  if (old != 0


      && (! reload_inherited[j] || (rl->out && ! rl->out_reg))
      && ! rtx_equal_p (rl->reg_rtx, old)
      && rl->reg_rtx != 0)
    emit_input_reload_insns (chain, rld + j, old, j);




  if (optimize && reload_inherited[j] && rl->in
      && MEM_P (rl->in)
      && MEM_P (rl->in_reg)
      && reload_spill_index[j] >= 0
      && TEST_HARD_REG_BIT (reg_reloaded_valid, reload_spill_index[j]))
    rl->in = regno_reg_rtx[reg_reloaded_contents[reload_spill_index[j]]];





  if (optimize



      && rl->when_needed == RELOAD_FOR_INPUT
      && (reload_inherited[j] || reload_override_in[j])
      && rl->reg_rtx
      && REG_P (rl->reg_rtx)
      && spill_reg_store[REGNO (rl->reg_rtx)] != 0
      && (dead_or_set_p (insn,
    spill_reg_stored_to[REGNO (rl->reg_rtx)])
   || rtx_equal_p (spill_reg_stored_to[REGNO (rl->reg_rtx)],
     rl->out_reg)))
    delete_output_reload (insn, j, REGNO (rl->reg_rtx));
}
