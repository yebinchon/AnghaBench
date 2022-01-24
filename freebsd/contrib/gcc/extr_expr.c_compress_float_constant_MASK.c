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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* predicate ) (int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int CODE_FOR_nothing ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  UNKNOWN ; 
 int FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 scalar_t__** float_extend_from_mem ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_2__* insn_data ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC19 (rtx x, rtx y)
{
  enum machine_mode dstmode = FUNC2 (x);
  enum machine_mode orig_srcmode = FUNC2 (y);
  enum machine_mode srcmode;
  REAL_VALUE_TYPE r;
  int oldcost, newcost;

  FUNC6 (r, y);

  if (FUNC5 (y))
    oldcost = FUNC15 (y, SET);
  else
    oldcost = FUNC15 (FUNC11 (dstmode, y), SET);

  for (srcmode = FUNC1 (FUNC3 (orig_srcmode));
       srcmode != orig_srcmode;
       srcmode = FUNC4 (srcmode))
    {
      enum insn_code ic;
      rtx trunc_y, last_insn;

      /* Skip if the target can't extend this way.  */
      ic = FUNC8 (dstmode, srcmode, 0);
      if (ic == CODE_FOR_nothing)
	continue;

      /* Skip if the narrowed value isn't exact.  */
      if (! FUNC10 (srcmode, &r))
	continue;

      trunc_y = FUNC0 (r, srcmode);

      if (FUNC5 (trunc_y))
	{
	  /* Skip if the target needs extra instructions to perform
	     the extension.  */
	  if (! (*insn_data[ic].operand[1].predicate) (trunc_y, srcmode))
	    continue;
	  /* This is valid, but may not be cheaper than the original. */
	  newcost = FUNC15 (FUNC13 (dstmode, trunc_y), SET);
	  if (oldcost < newcost)
	    continue;
	}
      else if (float_extend_from_mem[dstmode][srcmode])
	{
	  trunc_y = FUNC11 (srcmode, trunc_y);
	  /* This is valid, but may not be cheaper than the original. */
	  newcost = FUNC15 (FUNC13 (dstmode, trunc_y), SET);
	  if (oldcost < newcost)
	    continue;
	  trunc_y = FUNC18 (trunc_y);
	}
      else
	continue;

      /* For CSE's benefit, force the compressed constant pool entry
	 into a new pseudo.  This constant may be used in different modes,
	 and if not, combine will put things back together for us.  */
      trunc_y = FUNC12 (srcmode, trunc_y);
      FUNC9 (ic, x, trunc_y, UNKNOWN);
      last_insn = FUNC14 ();

      if (FUNC7 (x))
	FUNC16 (last_insn, REG_EQUAL, y);

      return last_insn;
    }

  return NULL_RTX;
}