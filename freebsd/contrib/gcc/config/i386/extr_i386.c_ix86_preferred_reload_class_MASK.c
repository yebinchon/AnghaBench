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
typedef  scalar_t__ rtx ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_DOUBLE ; 
 int FLOAT_INT_REGS ; 
 int FLOAT_REGS ; 
 int FLOAT_SSE_REGS ; 
 int FP_SECOND_REG ; 
 int FP_SECOND_SSE_REGS ; 
 int FP_TOP_REG ; 
 int FP_TOP_SSE_REGS ; 
 int GENERAL_REGS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int NO_REGS ; 
 scalar_t__ PLUS ; 
 scalar_t__ QImode ; 
 int Q_REGS ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ TARGET_80387 ; 
 int /*<<< orphan*/  TARGET_MIX_SSE_I387 ; 
 scalar_t__ TARGET_SSE_MATH ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

enum reg_class
FUNC10 (rtx x, enum reg_class class)
{
  enum machine_mode mode = FUNC3 (x);

  /* We're only allowed to return a subclass of CLASS.  Many of the
     following checks fail for NO_REGS, so eliminate that early.  */
  if (class == NO_REGS)
    return NO_REGS;

  /* All classes can load zeros.  */
  if (x == FUNC0 (mode))
    return class;

  /* Force constants into memory if we are loading a (nonzero) constant into
     an MMX or SSE register.  This is because there are no MMX/SSE instructions
     to load from a constant.  */
  if (FUNC1 (x)
      && (FUNC4 (class) || FUNC5 (class)))
    return NO_REGS;

  /* Prefer SSE regs only, if we can use them for math.  */
  if (TARGET_SSE_MATH && !TARGET_MIX_SSE_I387 && FUNC7 (mode))
    return FUNC6 (class) ? class : NO_REGS;

  /* Floating-point constants need more complex checks.  */
  if (FUNC2 (x) == CONST_DOUBLE && FUNC3 (x) != VOIDmode)
    {
      /* General regs can load everything.  */
      if (FUNC8 (class, GENERAL_REGS))
        return class;

      /* Floats can load 0 and 1 plus some others.  Note that we eliminated
	 zero above.  We only want to wind up preferring 80387 registers if
	 we plan on doing computation with them.  */
      if (TARGET_80387
	  && FUNC9 (x))
	{
	  /* Limit class to non-sse.  */
	  if (class == FLOAT_SSE_REGS)
	    return FLOAT_REGS;
	  if (class == FP_TOP_SSE_REGS)
	    return FP_TOP_REG;
	  if (class == FP_SECOND_SSE_REGS)
	    return FP_SECOND_REG;
	  if (class == FLOAT_INT_REGS || class == FLOAT_REGS)
	    return class;
	}

      return NO_REGS;
    }

  /* Generally when we see PLUS here, it's the function invariant
     (plus soft-fp const_int).  Which can only be computed into general
     regs.  */
  if (FUNC2 (x) == PLUS)
    return FUNC8 (class, GENERAL_REGS) ? class : NO_REGS;

  /* QImode constants are easy to load, but non-constant QImode data
     must go into Q_REGS.  */
  if (FUNC3 (x) == QImode && !FUNC1 (x))
    {
      if (FUNC8 (class, Q_REGS))
	return class;
      if (FUNC8 (Q_REGS, class))
	return Q_REGS;
      return NO_REGS;
    }

  return class;
}