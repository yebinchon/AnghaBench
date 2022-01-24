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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {scalar_t__ reg_rtx; scalar_t__ in; } ;

/* Variables and functions */
 int CODE_LABEL ; 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int JUMP_INSN ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int REG ; 
 size_t FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (scalar_t__,int,int) ; 
 int FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int n_reloads ; 
 scalar_t__ FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int* reg_reloaded_contents ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ reload_first_uid ; 
 scalar_t__* reload_inherited ; 
 scalar_t__* reload_override_in ; 
 TYPE_1__* rld ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__* spill_reg_order ; 

__attribute__((used)) static void
FUNC22 (rtx dead_insn, rtx x, rtx current_insn)
{
  rtx prev, set, dst, i2;
  int i, j;
  enum rtx_code code = FUNC0 (x);

  if (code != REG)
    {
      const char *fmt = FUNC1 (code);
      for (i = FUNC2 (code) - 1; i >= 0; i--)
	{
	  if (fmt[i] == 'e')
	    FUNC22 (dead_insn, FUNC14 (x, i), current_insn);
	  else if (fmt[i] == 'E')
	    {
	      for (j = FUNC16 (x, i) - 1; j >= 0; j--)
		FUNC22 (dead_insn, FUNC15 (x, i, j),
					  current_insn);
	    }
	}
      return;
    }

  if (spill_reg_order[FUNC10 (x)] < 0)
    return;

  /* Scan backwards for the insn that sets x.  This might be a way back due
     to inheritance.  */
  for (prev = FUNC9 (dead_insn); prev; prev = FUNC9 (prev))
    {
      code = FUNC0 (prev);
      if (code == CODE_LABEL || code == JUMP_INSN)
	return;
      if (!FUNC3 (prev))
	continue;
      if (FUNC19 (x, FUNC8 (prev)))
	break;
      if (FUNC18 (x, FUNC8 (prev)))
	return;
    }
  if (! prev || FUNC4 (prev) < reload_first_uid)
    return;
  /* Check that PREV only sets the reload register.  */
  set = FUNC21 (prev);
  if (! set)
    return;
  dst = FUNC12 (set);
  if (!FUNC11 (dst)
      || ! FUNC20 (dst, x))
    return;
  if (! FUNC19 (dst, FUNC8 (dead_insn)))
    {
      /* Check if DST was used in a later insn -
	 it might have been inherited.  */
      for (i2 = FUNC7 (dead_insn); i2; i2 = FUNC7 (i2))
	{
	  if (FUNC6 (i2))
	    break;
	  if (! FUNC3 (i2))
	    continue;
	  if (FUNC18 (dst, FUNC8 (i2)))
	    {
	      /* If there is a reference to the register in the current insn,
		 it might be loaded in a non-inherited reload.  If no other
		 reload uses it, that means the register is set before
		 referenced.  */
	      if (i2 == current_insn)
		{
		  for (j = n_reloads - 1; j >= 0; j--)
		    if ((rld[j].reg_rtx == dst && reload_inherited[j])
			|| reload_override_in[j] == dst)
		      return;
		  for (j = n_reloads - 1; j >= 0; j--)
		    if (rld[j].in && rld[j].reg_rtx == dst)
		      break;
		  if (j >= 0)
		    break;
		}
	      return;
	    }
	  if (FUNC5 (i2))
	    break;
	  /* If DST is still live at CURRENT_INSN, check if it is used for
	     any reload.  Note that even if CURRENT_INSN sets DST, we still
	     have to check the reloads.  */
	  if (i2 == current_insn)
	    {
	      for (j = n_reloads - 1; j >= 0; j--)
		if ((rld[j].reg_rtx == dst && reload_inherited[j])
		    || reload_override_in[j] == dst)
		  return;
	      /* ??? We can't finish the loop here, because dst might be
		 allocated to a pseudo in this block if no reload in this
		 block needs any of the classes containing DST - see
		 spill_hard_reg.  There is no easy way to tell this, so we
		 have to scan till the end of the basic block.  */
	    }
	  if (FUNC19 (dst, FUNC8 (i2)))
	    break;
	}
    }
  FUNC22 (prev, FUNC13 (set), current_insn);
  reg_reloaded_contents[FUNC10 (dst)] = -1;
  FUNC17 (prev);
}