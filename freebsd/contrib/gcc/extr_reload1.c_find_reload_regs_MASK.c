#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct reload {int dummy; } ;
struct insn_chain {int n_reloads; TYPE_1__* rld; int /*<<< orphan*/  used_spill_regs; int /*<<< orphan*/  insn; } ;
struct TYPE_4__ {int regno; scalar_t__ out; scalar_t__ in; int /*<<< orphan*/  class; int /*<<< orphan*/  optional; scalar_t__ secondary_p; scalar_t__ reg_rtx; int /*<<< orphan*/  nregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int failure ; 
 int /*<<< orphan*/  FUNC6 (struct insn_chain*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/ ** hard_regno_nregs ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 
 int n_reloads ; 
 int /*<<< orphan*/  FUNC9 (struct insn_chain*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int,int /*<<< orphan*/ ) ; 
 int* reload_order ; 
 int /*<<< orphan*/  reload_reg_class_lower ; 
 TYPE_1__* rld ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  used_spill_regs ; 
 int /*<<< orphan*/  used_spill_regs_local ; 

__attribute__((used)) static void
FUNC12 (struct insn_chain *chain)
{
  int i;

  /* In order to be certain of getting the registers we need,
     we must sort the reloads into order of increasing register class.
     Then our grabbing of reload registers will parallel the process
     that provided the reload registers.  */
  for (i = 0; i < chain->n_reloads; i++)
    {
      /* Show whether this reload already has a hard reg.  */
      if (chain->rld[i].reg_rtx)
	{
	  int regno = FUNC5 (chain->rld[i].reg_rtx);
	  chain->rld[i].regno = regno;
	  chain->rld[i].nregs
	    = hard_regno_nregs[regno][FUNC2 (chain->rld[i].reg_rtx)];
	}
      else
	chain->rld[i].regno = -1;
      reload_order[i] = i;
    }

  n_reloads = chain->n_reloads;
  FUNC8 (rld, chain->rld, n_reloads * sizeof (struct reload));

  FUNC0 (used_spill_regs_local);

  if (dump_file)
    FUNC7 (dump_file, "Spilling for insn %d.\n", FUNC3 (chain->insn));

  FUNC10 (reload_order, n_reloads, sizeof (short), reload_reg_class_lower);

  /* Compute the order of preference for hard registers to spill.  */

  FUNC9 (chain);

  for (i = 0; i < n_reloads; i++)
    {
      int r = reload_order[i];

      /* Ignore reloads that got marked inoperative.  */
      if ((rld[r].out != 0 || rld[r].in != 0 || rld[r].secondary_p)
	  && ! rld[r].optional
	  && rld[r].regno == -1)
	if (! FUNC6 (chain, i))
	  {
	    if (dump_file)
	      FUNC7(dump_file, "reload failure for reload %d\n", r);
	    FUNC11 (chain->insn, rld[r].class);
	    failure = 1;
	    return;
	  }
    }

  FUNC1 (chain->used_spill_regs, used_spill_regs_local);
  FUNC4 (used_spill_regs, used_spill_regs_local);

  FUNC8 (chain->rld, rld, n_reloads * sizeof (struct reload));
}