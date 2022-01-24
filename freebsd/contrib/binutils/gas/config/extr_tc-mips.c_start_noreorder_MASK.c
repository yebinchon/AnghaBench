#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ noreorder; scalar_t__ mips16; } ;
struct TYPE_5__ {int fixed_p; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NOP_INSN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frag_now ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* history ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int mips_any_noreorder ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ mips_optimize ; 
 TYPE_2__ mips_opts ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prev_nop_frag ; 
 int prev_nop_frag_holds ; 
 scalar_t__ prev_nop_frag_required ; 
 scalar_t__ prev_nop_frag_since ; 

__attribute__((used)) static void
FUNC9 (void)
{
  if (mips_opts.noreorder == 0)
    {
      unsigned int i;
      int nops;

      /* None of the instructions before the .set noreorder can be moved.  */
      for (i = 0; i < FUNC0 (history); i++)
	history[i].fixed_p = 1;

      /* Insert any nops that might be needed between the .set noreorder
	 block and the previous instructions.  We will later remove any
	 nops that turn out not to be needed.  */
      nops = FUNC8 (history, NULL);
      if (nops > 0)
	{
	  if (mips_optimize != 0)
	    {
	      /* Record the frag which holds the nop instructions, so
                 that we can remove them if we don't need them.  */
	      FUNC2 (mips_opts.mips16 ? nops * 2 : nops * 4);
	      prev_nop_frag = frag_now;
	      prev_nop_frag_holds = nops;
	      prev_nop_frag_required = 0;
	      prev_nop_frag_since = 0;
	    }

	  for (; nops > 0; --nops)
	    FUNC1 (NOP_INSN);

	  /* Move on to a new frag, so that it is safe to simply
	     decrease the size of prev_nop_frag.  */
	  FUNC4 (frag_now);
	  FUNC3 (0);
	  FUNC7 ();
	}
      FUNC5 ();
      FUNC6 ();
    }
  mips_opts.noreorder++;
  mips_any_noreorder = 1;
}