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
typedef  void* rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CCFPUmode ; 
 scalar_t__ CCFPmode ; 
 int CONST_INT ; 
 int DImode ; 
#define  EQ 137 
 scalar_t__ FUNC0 (int) ; 
#define  GE 136 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  GEU 135 
#define  GT 134 
#define  GTU 133 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
#define  LE 132 
#define  LEU 131 
#define  LT 130 
 int LTGT ; 
#define  LTU 129 
#define  NE 128 
 int /*<<< orphan*/  NULL_RTX ; 
 int ORDERED ; 
 scalar_t__ TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_IEEE_FP ; 
 int TImode ; 
 int UNEQ ; 
 int UNGT ; 
 int UNLE ; 
 int UNORDERED ; 
 scalar_t__ VOIDmode ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ) ; 
 void* const0_rtx ; 
 void* const1_rtx ; 
 void* constm1_rtx ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (int,void*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 void* FUNC11 (int,int) ; 
 void* FUNC12 () ; 
 void* ix86_compare_op0 ; 
 void* ix86_compare_op1 ; 
 void* FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC14 (int,void*,void*,int /*<<< orphan*/ ,void**,void**) ; 
 int FUNC15 (int) ; 
 scalar_t__ no_new_pseudos ; 
 int /*<<< orphan*/  FUNC16 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (void*,int) ; 

__attribute__((used)) static bool
FUNC20 (enum rtx_code code, rtx op0, rtx op1, rtx *pop)
{
  enum machine_mode mode =
    FUNC2 (op0) != VOIDmode ? FUNC2 (op0) : FUNC2 (op1);

  /* Do not handle DImode compares that go through special path.  Also we can't
     deal with FP compares yet.  This is possible to add.  */
  if (mode == (TARGET_64BIT ? TImode : DImode))
    return false;
  if (FUNC0 (mode))
    {
      rtx second_test = NULL, bypass_test = NULL;
      rtx compare_op, compare_seq;

      /* Shortcut:  following common codes never translate into carry flag compares.  */
      if (code == EQ || code == NE || code == UNEQ || code == LTGT
	  || code == ORDERED || code == UNORDERED)
	return false;

      /* These comparisons require zero flag; swap operands so they won't.  */
      if ((code == GT || code == UNLE || code == LE || code == UNGT)
	  && !TARGET_IEEE_FP)
	{
	  rtx tmp = op0;
	  op0 = op1;
	  op1 = tmp;
	  code = FUNC18 (code);
	}

      /* Try to expand the comparison and verify that we end up with carry flag
	 based comparison.  This is fails to be true only when we decide to expand
	 comparison using arithmetic that is not too common scenario.  */
      FUNC17 ();
      compare_op = FUNC14 (code, op0, op1, NULL_RTX,
					   &second_test, &bypass_test);
      compare_seq = FUNC12 ();
      FUNC8 ();

      if (second_test || bypass_test)
	return false;
      if (FUNC2 (FUNC6 (compare_op, 0)) == CCFPmode
	  || FUNC2 (FUNC6 (compare_op, 0)) == CCFPUmode)
        code = FUNC15 (FUNC1 (compare_op));
      else
	code = FUNC1 (compare_op);
      if (code != LTU && code != GEU)
	return false;
      FUNC7 (compare_seq);
      *pop = compare_op;
      return true;
    }
  if (!FUNC4 (mode))
    return false;
  switch (code)
    {
    case LTU:
    case GEU:
      break;

    /* Convert a==0 into (unsigned)a<1.  */
    case EQ:
    case NE:
      if (op1 != const0_rtx)
	return false;
      op1 = const1_rtx;
      code = (code == EQ ? LTU : GEU);
      break;

    /* Convert a>b into b<a or a>=b-1.  */
    case GTU:
    case LEU:
      if (FUNC1 (op1) == CONST_INT)
	{
	  op1 = FUNC11 (FUNC5 (op1) + 1, FUNC2 (op0));
	  /* Bail out on overflow.  We still can swap operands but that
	     would force loading of the constant into register.  */
	  if (op1 == const0_rtx
	      || !FUNC19 (op1, FUNC2 (op1)))
	    return false;
	  code = (code == GTU ? GEU : LTU);
	}
      else
	{
	  rtx tmp = op1;
	  op1 = op0;
	  op0 = tmp;
	  code = (code == GTU ? LTU : GEU);
	}
      break;

    /* Convert a>=0 into (unsigned)a<0x80000000.  */
    case LT:
    case GE:
      if (mode == DImode || op1 != const0_rtx)
	return false;
      op1 = FUNC11 (1 << (FUNC3 (mode) - 1), mode);
      code = (code == LT ? GEU : LTU);
      break;
    case LE:
    case GT:
      if (mode == DImode || op1 != constm1_rtx)
	return false;
      op1 = FUNC11 (1 << (FUNC3 (mode) - 1), mode);
      code = (code == LE ? GEU : LTU);
      break;

    default:
      return false;
    }
  /* Swapping operands may cause constant to appear as first operand.  */
  if (!FUNC16 (op0, VOIDmode))
    {
      if (no_new_pseudos)
	return false;
      op0 = FUNC9 (mode, op0);
    }
  ix86_compare_op0 = op0;
  ix86_compare_op1 = op1;
  *pop = FUNC13 (code, NULL, NULL);
  FUNC10 (FUNC1 (*pop) == LTU || FUNC1 (*pop) == GEU);
  return true;
}