#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {scalar_t__ insn_code; } ;

/* Variables and functions */
 scalar_t__ BIGGEST_ALIGNMENT ; 
 int /*<<< orphan*/  BLOCK_OP_NO_LIBCALL ; 
 scalar_t__ CODE_FOR_nothing ; 
 scalar_t__ CONCAT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ MODE_COMPLEX_FLOAT ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  STRICT_ALIGNMENT ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 (int) ; 
 TYPE_2__* mov_optab ; 
 scalar_t__ FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/  reload_completed ; 
 int /*<<< orphan*/  reload_in_progress ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC20 (enum machine_mode mode, rtx x, rtx y)
{
  bool try_int;

  /* Need to take special care for pushes, to maintain proper ordering
     of the data, and possibly extra padding.  */
  if (FUNC15 (x, mode))
    return FUNC10 (mode, x, y);

  /* See if we can coerce the target into moving both values at once.  */

  /* Move floating point as parts.  */
  if (FUNC3 (mode) == MODE_COMPLEX_FLOAT
      && mov_optab->handlers[FUNC4 (mode)].insn_code != CODE_FOR_nothing)
    try_int = false;
  /* Not possible if the values are inherently not adjacent.  */
  else if (FUNC2 (x) == CONCAT || FUNC2 (y) == CONCAT)
    try_int = false;
  /* Is possible if both are registers (or subregs of registers).  */
  else if (FUNC18 (x, mode) && FUNC18 (y, mode))
    try_int = true;
  /* If one of the operands is a memory, and alignment constraints
     are friendly enough, we may be able to do combined memory operations.
     We do not attempt this if Y is a constant because that combination is
     usually better with the by-parts thing below.  */
  else if ((FUNC6 (x) ? !FUNC0 (y) : FUNC6 (y))
	   && (!STRICT_ALIGNMENT
	       || FUNC14 (mode) == BIGGEST_ALIGNMENT))
    try_int = true;
  else
    try_int = false;

  if (try_int)
    {
      rtx ret;

      /* For memory to memory moves, optimal behavior can be had with the
	 existing block move logic.  */
      if (FUNC6 (x) && FUNC6 (y))
	{
	  FUNC8 (x, y, FUNC1 (FUNC5 (mode)),
			   BLOCK_OP_NO_LIBCALL);
	  return FUNC13 ();
	}

      ret = FUNC11 (mode, x, y, true);
      if (ret)
	return ret;
    }

  /* Show the output dies here.  This is necessary for SUBREGs
     of pseudos since we cannot track their lifetimes correctly;
     hard regs shouldn't appear here except as return values.  */
  if (!reload_completed && !reload_in_progress
      && FUNC7 (x) && !FUNC17 (x, y))
    FUNC9 (FUNC12 (VOIDmode, x));

  FUNC19 (x, FUNC16 (y, false), false);
  FUNC19 (x, FUNC16 (y, true), true);
  return FUNC13 ();
}