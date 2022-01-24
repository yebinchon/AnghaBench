#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct insn_chain {int /*<<< orphan*/  used_spill_regs; int /*<<< orphan*/  dead_or_set; int /*<<< orphan*/  live_throughout; } ;
typedef  scalar_t__ rtx ;
struct TYPE_2__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  when_needed; int /*<<< orphan*/  opnum; scalar_t__ reg_rtx; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_RELOADS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int n_reloads ; 
 int /*<<< orphan*/  reg_used_in_insn ; 
 int /*<<< orphan*/  reload_inheritance_insn ; 
 int /*<<< orphan*/  reload_inherited ; 
 int reload_n_operands ; 
 int /*<<< orphan*/  reload_override_in ; 
 int /*<<< orphan*/  reload_reg_unavailable ; 
 int /*<<< orphan*/  reload_reg_used ; 
 int /*<<< orphan*/  reload_reg_used_at_all ; 
 int /*<<< orphan*/  reload_reg_used_for_inherit ; 
 int /*<<< orphan*/ * reload_reg_used_in_inpaddr_addr ; 
 int /*<<< orphan*/ * reload_reg_used_in_input ; 
 int /*<<< orphan*/ * reload_reg_used_in_input_addr ; 
 int /*<<< orphan*/  reload_reg_used_in_insn ; 
 int /*<<< orphan*/  reload_reg_used_in_op_addr ; 
 int /*<<< orphan*/  reload_reg_used_in_op_addr_reload ; 
 int /*<<< orphan*/  reload_reg_used_in_other_addr ; 
 int /*<<< orphan*/ * reload_reg_used_in_outaddr_addr ; 
 int /*<<< orphan*/ * reload_reg_used_in_output ; 
 int /*<<< orphan*/ * reload_reg_used_in_output_addr ; 
 TYPE_1__* rld ; 

__attribute__((used)) static void
FUNC8 (struct insn_chain *chain, rtx *save_reload_reg_rtx)
{
  int i;

  for (i = 0; i < n_reloads; i++)
    rld[i].reg_rtx = save_reload_reg_rtx[i];

  FUNC7 (reload_inherited, 0, MAX_RELOADS);
  FUNC7 (reload_inheritance_insn, 0, MAX_RELOADS * sizeof (rtx));
  FUNC7 (reload_override_in, 0, MAX_RELOADS * sizeof (rtx));

  FUNC0 (reload_reg_used);
  FUNC0 (reload_reg_used_at_all);
  FUNC0 (reload_reg_used_in_op_addr);
  FUNC0 (reload_reg_used_in_op_addr_reload);
  FUNC0 (reload_reg_used_in_insn);
  FUNC0 (reload_reg_used_in_other_addr);

  FUNC0 (reg_used_in_insn);
  {
    HARD_REG_SET tmp;
    FUNC4 (tmp, &chain->live_throughout);
    FUNC2 (reg_used_in_insn, tmp);
    FUNC4 (tmp, &chain->dead_or_set);
    FUNC2 (reg_used_in_insn, tmp);
    FUNC5 (&reg_used_in_insn, &chain->live_throughout);
    FUNC5 (&reg_used_in_insn, &chain->dead_or_set);
  }

  for (i = 0; i < reload_n_operands; i++)
    {
      FUNC0 (reload_reg_used_in_output[i]);
      FUNC0 (reload_reg_used_in_input[i]);
      FUNC0 (reload_reg_used_in_input_addr[i]);
      FUNC0 (reload_reg_used_in_inpaddr_addr[i]);
      FUNC0 (reload_reg_used_in_output_addr[i]);
      FUNC0 (reload_reg_used_in_outaddr_addr[i]);
    }

  FUNC1 (reload_reg_unavailable, chain->used_spill_regs);

  FUNC0 (reload_reg_used_for_inherit);

  for (i = 0; i < n_reloads; i++)
    /* If we have already decided to use a certain register,
       don't use it in another way.  */
    if (rld[i].reg_rtx)
      FUNC6 (FUNC3 (rld[i].reg_rtx), rld[i].opnum,
			      rld[i].when_needed, rld[i].mode);
}