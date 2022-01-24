#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ named_count; scalar_t__ nargs; int iwmmxt_nregs; int can_split; int nregs; int /*<<< orphan*/  call_cookie; } ;
typedef  TYPE_1__ CUMULATIVE_ARGS ;

/* Variables and functions */
 scalar_t__ ARM_DOUBLEWORD_ALIGN ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FIRST_IWMMXT_REGNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int NUM_ARG_REGS ; 
 scalar_t__ TARGET_IWMMXT_ABI ; 
 int VOIDmode ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

rtx
FUNC5 (CUMULATIVE_ARGS *pcum, enum machine_mode mode,
		  tree type, int named)
{
  int nregs;

  /* Varargs vectors are treated the same as long long.
     named_count avoids having to change the way arm handles 'named' */
  if (TARGET_IWMMXT_ABI
      && FUNC3 (mode)
      && pcum->named_count > pcum->nargs + 1)
    {
      if (pcum->iwmmxt_nregs <= 9)
	return FUNC4 (mode, pcum->iwmmxt_nregs + FIRST_IWMMXT_REGNUM);
      else
	{
	  pcum->can_split = false;
	  return NULL_RTX;
	}
    }

  /* Put doubleword aligned quantities in even register pairs.  */
  if (pcum->nregs & 1
      && ARM_DOUBLEWORD_ALIGN
      && FUNC2 (mode, type))
    pcum->nregs++;

  if (mode == VOIDmode)
    /* Compute operand 2 of the call insn.  */
    return FUNC1 (pcum->call_cookie);

  /* Only allow splitting an arg between regs and memory if all preceding
     args were allocated to regs.  For args passed by reference we only count
     the reference pointer.  */
  if (pcum->can_split)
    nregs = 1;
  else
    nregs = FUNC0 (mode, type);

  if (!named || pcum->nregs + nregs > NUM_ARG_REGS)
    return NULL_RTX;

  return FUNC4 (mode, pcum->nregs);
}