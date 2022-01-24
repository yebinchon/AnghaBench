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
struct parms_set_data {int nregs; int /*<<< orphan*/  regs; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ USE ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct parms_set_data*) ; 
 int /*<<< orphan*/  parms_set ; 

rtx
FUNC15 (rtx call_insn, rtx boundary)
{
  struct parms_set_data parm;
  rtx p, before, first_set;

  /* Since different machines initialize their parameter registers
     in different orders, assume nothing.  Collect the set of all
     parameter registers.  */
  FUNC2 (parm.regs);
  parm.nregs = 0;
  for (p = FUNC0 (call_insn); p; p = FUNC12 (p, 1))
    if (FUNC4 (FUNC12 (p, 0)) == USE
	&& FUNC10 (FUNC12 (FUNC12 (p, 0), 0)))
      {
	FUNC13 (FUNC9 (FUNC12 (FUNC12 (p, 0), 0)) < FIRST_PSEUDO_REGISTER);

	/* We only care about registers which can hold function
	   arguments.  */
	if (!FUNC3 (FUNC9 (FUNC12 (FUNC12 (p, 0), 0))))
	  continue;

	FUNC11 (parm.regs, FUNC9 (FUNC12 (FUNC12 (p, 0), 0)));
	parm.nregs++;
      }
  before = call_insn;
  first_set = call_insn;

  /* Search backward for the first set of a register in this set.  */
  while (parm.nregs && before != boundary)
    {
      before = FUNC8 (before);

      /* It is possible that some loads got CSEed from one call to
         another.  Stop in that case.  */
      if (FUNC1 (before))
	break;

      /* Our caller needs either ensure that we will find all sets
         (in case code has not been optimized yet), or take care
         for possible labels in a way by setting boundary to preceding
         CODE_LABEL.  */
      if (FUNC6 (before))
	{
	  FUNC13 (before == boundary);
	  break;
	}

      if (FUNC5 (before))
	{
	  int nregs_old = parm.nregs;
	  FUNC14 (FUNC7 (before), parms_set, &parm);
	  /* If we found something that did not set a parameter reg,
	     we're done.  Do not keep going, as that might result
	     in hoisting an insn before the setting of a pseudo
	     that is used by the hoisted insn. */
	  if (nregs_old != parm.nregs)
	    first_set = before;
	  else
	    break;
	}
    }
  return first_set;
}