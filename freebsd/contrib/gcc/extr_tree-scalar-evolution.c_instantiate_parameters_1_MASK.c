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
typedef  int /*<<< orphan*/  tree ;
struct loop {int /*<<< orphan*/  depth; } ;
typedef  int /*<<< orphan*/  htab_t ;
typedef  TYPE_1__* basic_block ;
struct TYPE_6__ {int /*<<< orphan*/  depth; } ;
struct TYPE_5__ {int /*<<< orphan*/  loop_father; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  CONVERT_EXPR 137 
 int FOLD_CONVERSIONS ; 
 int INSERT_SUPERLOOP_CHRECS ; 
#define  MINUS_EXPR 136 
#define  MULT_EXPR 135 
#define  NON_LVALUE_EXPR 134 
#define  NOP_EXPR 133 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PARAM_SCEV_MAX_EXPR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  PLUS_EXPR 132 
#define  POLYNOMIAL_CHREC 131 
#define  SCEV_KNOWN 130 
#define  SCEV_NOT_KNOWN 129 
#define  SSA_NAME 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int const FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  already_instantiated ; 
 int /*<<< orphan*/  FUNC10 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_known ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct loop* FUNC23 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct loop*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC34 (struct loop *loop, tree chrec, int flags, htab_t cache,
			  int size_expr)
{
  tree res, op0, op1, op2;
  basic_block def_bb;
  struct loop *def_loop;
  tree type = FUNC22 (chrec);

  /* Give up if the expression is larger than the MAX that we allow.  */
  if (size_expr++ > FUNC3 (PARAM_SCEV_MAX_EXPR_SIZE))
    return chrec_dont_know;

  if (FUNC11 (chrec)
      || FUNC30 (chrec))
    return chrec;

  switch (FUNC6 (chrec))
    {
    case SSA_NAME:
      def_bb = FUNC12 (FUNC4 (chrec));

      /* A parameter (or loop invariant and we do not want to include
	 evolutions in outer loops), nothing to do.  */
      if (!def_bb
	  || (!(flags & INSERT_SUPERLOOP_CHRECS)
	      && !FUNC24 (loop, def_bb)))
	return chrec;

      /* We cache the value of instantiated variable to avoid exponential
	 time complexity due to reevaluations.  We also store the convenient
	 value in the cache in order to prevent infinite recursion -- we do
	 not want to instantiate the SSA_NAME if it is in a mixer
	 structure.  This is used for avoiding the instantiation of
	 recursively defined functions, such as: 

	 | a_2 -> {0, +, 1, +, a_2}_1  */

      res = FUNC29 (cache, chrec);
      if (res)
	return res;

      /* Store the convenient value for chrec in the structure.  If it
	 is defined outside of the loop, we may just leave it in symbolic
	 form, otherwise we need to admit that we do not know its behavior
	 inside the loop.  */
      res = !FUNC24 (loop, def_bb) ? chrec : chrec_dont_know;
      FUNC33 (cache, chrec, res);

      /* To make things even more complicated, instantiate_parameters_1
	 calls analyze_scalar_evolution that may call # of iterations
	 analysis that may in turn call instantiate_parameters_1 again.
	 To prevent the infinite recursion, keep also the bitmap of
	 ssa names that are being instantiated globally.  */
      if (FUNC13 (already_instantiated, FUNC5 (chrec)))
	return res;

      def_loop = FUNC23 (loop, def_bb->loop_father);

      /* If the analysis yields a parametric chrec, instantiate the
	 result again.  */
      FUNC15 (already_instantiated, FUNC5 (chrec));
      res = FUNC10 (def_loop, chrec);

      /* Don't instantiate loop-closed-ssa phi nodes.  */
      if (FUNC6 (res) == SSA_NAME
	  && (FUNC32 (FUNC4 (res)) == NULL
	      || (FUNC32 (FUNC4 (res))->depth
		  > def_loop->depth)))
	{
	  if (res == chrec)
	    res = FUNC31 (chrec);
	  else
	    res = chrec;

	  if (res == NULL_TREE)
	    res = chrec_dont_know;
	}

      else if (res != chrec_dont_know)
	res = FUNC34 (loop, res, flags, cache, size_expr);

      FUNC14 (already_instantiated, FUNC5 (chrec));

      /* Store the correct value to the cache.  */
      FUNC33 (cache, chrec, res);
      return res;

    case POLYNOMIAL_CHREC:
      op0 = FUNC34 (loop, FUNC0 (chrec),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
	return chrec_dont_know;

      op1 = FUNC34 (loop, FUNC1 (chrec),
				      flags, cache, size_expr);
      if (op1 == chrec_dont_know)
	return chrec_dont_know;

      if (FUNC0 (chrec) != op0
	  || FUNC1 (chrec) != op1)
	{
	  op1 = FUNC17 (FUNC22 (op0), op1, NULL_TREE);
	  chrec = FUNC16 (FUNC2 (chrec), op0, op1);
	}
      return chrec;

    case PLUS_EXPR:
      op0 = FUNC34 (loop, FUNC8 (chrec, 0),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
	return chrec_dont_know;

      op1 = FUNC34 (loop, FUNC8 (chrec, 1),
				      flags, cache, size_expr);
      if (op1 == chrec_dont_know)
	return chrec_dont_know;

      if (FUNC8 (chrec, 0) != op0
	  || FUNC8 (chrec, 1) != op1)
	{
	  op0 = FUNC17 (type, op0, NULL_TREE);
	  op1 = FUNC17 (type, op1, NULL_TREE);
	  chrec = FUNC21 (type, op0, op1);
	}
      return chrec;

    case MINUS_EXPR:
      op0 = FUNC34 (loop, FUNC8 (chrec, 0),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
	return chrec_dont_know;

      op1 = FUNC34 (loop, FUNC8 (chrec, 1),
				      flags, cache, size_expr);
      if (op1 == chrec_dont_know)
	return chrec_dont_know;

      if (FUNC8 (chrec, 0) != op0
	  || FUNC8 (chrec, 1) != op1)
	{
	  op0 = FUNC17 (type, op0, NULL_TREE);
	  op1 = FUNC17 (type, op1, NULL_TREE);
	  chrec = FUNC19 (type, op0, op1);
	}
      return chrec;

    case MULT_EXPR:
      op0 = FUNC34 (loop, FUNC8 (chrec, 0),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
	return chrec_dont_know;

      op1 = FUNC34 (loop, FUNC8 (chrec, 1),
				      flags, cache, size_expr);
      if (op1 == chrec_dont_know)
	return chrec_dont_know;

      if (FUNC8 (chrec, 0) != op0
	  || FUNC8 (chrec, 1) != op1)
	{
	  op0 = FUNC17 (type, op0, NULL_TREE);
	  op1 = FUNC17 (type, op1, NULL_TREE);
	  chrec = FUNC20 (type, op0, op1);
	}
      return chrec;

    case NOP_EXPR:
    case CONVERT_EXPR:
    case NON_LVALUE_EXPR:
      op0 = FUNC34 (loop, FUNC8 (chrec, 0),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
        return chrec_dont_know;

      if (flags & FOLD_CONVERSIONS)
	{
	  tree tmp = FUNC18 (FUNC9 (chrec), op0);
	  if (tmp)
	    return tmp;
	}

      if (op0 == FUNC8 (chrec, 0))
	return chrec;

      /* If we used chrec_convert_aggressive, we can no longer assume that
	 signed chrecs do not overflow, as chrec_convert does, so avoid
         calling it in that case.  */
      if (flags & FOLD_CONVERSIONS)
	return FUNC28 (FUNC9 (chrec), op0);

      return FUNC17 (FUNC9 (chrec), op0, NULL_TREE);

    case SCEV_NOT_KNOWN:
      return chrec_dont_know;

    case SCEV_KNOWN:
      return chrec_known;
                                     
    default:
      break;
    }

  switch (FUNC7 (FUNC6 (chrec)))
    {
    case 3:
      op0 = FUNC34 (loop, FUNC8 (chrec, 0),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
	return chrec_dont_know;

      op1 = FUNC34 (loop, FUNC8 (chrec, 1),
				      flags, cache, size_expr);
      if (op1 == chrec_dont_know)
	return chrec_dont_know;

      op2 = FUNC34 (loop, FUNC8 (chrec, 2),
				      flags, cache, size_expr);
      if (op2 == chrec_dont_know)
        return chrec_dont_know;

      if (op0 == FUNC8 (chrec, 0)
	  && op1 == FUNC8 (chrec, 1)
	  && op2 == FUNC8 (chrec, 2))
	return chrec;

      return FUNC27 (FUNC6 (chrec),
			  FUNC9 (chrec), op0, op1, op2);

    case 2:
      op0 = FUNC34 (loop, FUNC8 (chrec, 0),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
	return chrec_dont_know;

      op1 = FUNC34 (loop, FUNC8 (chrec, 1),
				      flags, cache, size_expr);
      if (op1 == chrec_dont_know)
        return chrec_dont_know;

      if (op0 == FUNC8 (chrec, 0)
	  && op1 == FUNC8 (chrec, 1))
	return chrec;
      return FUNC26 (FUNC6 (chrec), FUNC9 (chrec), op0, op1);
	    
    case 1:
      op0 = FUNC34 (loop, FUNC8 (chrec, 0),
				      flags, cache, size_expr);
      if (op0 == chrec_dont_know)
        return chrec_dont_know;
      if (op0 == FUNC8 (chrec, 0))
	return chrec;
      return FUNC25 (FUNC6 (chrec), FUNC9 (chrec), op0);

    case 0:
      return chrec;

    default:
      break;
    }

  /* Too complicated to handle.  */
  return chrec_dont_know;
}