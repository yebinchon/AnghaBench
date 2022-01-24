#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct insn_chain {int /*<<< orphan*/  dead_or_set; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int VOIDmode ; 
 scalar_t__ FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__** hard_regno_nregs ; 
 int /*<<< orphan*/  hard_regs_saved ; 
 struct insn_chain* FUNC9 (struct insn_chain*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  n_regs_saved ; 
 int** reg_restore_code ; 
 scalar_t__** regno_save_mem ; 

__attribute__((used)) static int
FUNC10 (struct insn_chain *chain, int before_p, int regno,
		int maxrestore, enum machine_mode *save_mode)
{
  int i, k;
  rtx pat = NULL_RTX;
  int code;
  unsigned int numregs = 0;
  struct insn_chain *new;
  rtx mem;

  /* A common failure mode if register status is not correct in the
     RTL is for this routine to be called with a REGNO we didn't
     expect to save.  That will cause us to write an insn with a (nil)
     SET_DEST or SET_SRC.  Instead of doing so and causing a crash
     later, check for this common case here instead.  This will remove
     one step in debugging such problems.  */
  FUNC6 (regno_save_mem[regno][1]);

  /* Get the pattern to emit and update our status.

     See if we can restore `maxrestore' registers at once.  Work
     backwards to the single register case.  */
  for (i = maxrestore; i > 0; i--)
    {
      int j;
      int ok = 1;

      if (regno_save_mem[regno][i] == 0)
	continue;

      for (j = 0; j < i; j++)
	if (! FUNC3 (hard_regs_saved, regno + j))
	  {
	    ok = 0;
	    break;
	  }
      /* Must do this one restore at a time.  */
      if (! ok)
	continue;

      numregs = i;
      break;
    }

  mem = regno_save_mem [regno][numregs];
  if (save_mode [regno] != VOIDmode
      && save_mode [regno] != FUNC1 (mem)
      && numregs == (unsigned int) hard_regno_nregs[regno][save_mode [regno]])
    mem = FUNC4 (mem, save_mode[regno], 0);
  else
    mem = FUNC5 (mem);
  pat = FUNC8 (VOIDmode,
		     FUNC7 (FUNC1 (mem),
				  regno), mem);
  code = reg_restore_code[regno][FUNC1 (mem)];
  new = FUNC9 (chain, before_p, code, pat);

  /* Clear status for all registers we restored.  */
  for (k = 0; k < i; k++)
    {
      FUNC0 (hard_regs_saved, regno + k);
      FUNC2 (&new->dead_or_set, regno + k);
      n_regs_saved--;
    }

  /* Tell our callers how many extra registers we saved/restored.  */
  return numregs - 1;
}