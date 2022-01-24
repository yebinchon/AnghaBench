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
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ BOOLEAN_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONVERT_EXPR ; 
 int EQ_EXPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 int NE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ PLUS_EXPR ; 
 int SSA_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUTH_NOT_EXPR ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC18 (tree cond, tree *test_var_p)
{
  tree new_cond = NULL_TREE;
  enum tree_code cond_code = FUNC5 (cond);
  tree test_var = NULL_TREE;
  tree def;
  tree def_rhs;

  /* If the condition is not a lone variable or an equality test of an
     SSA_NAME against an integral constant, then we do not have an
     optimizable case.

     Note these conditions also ensure the COND_EXPR has no
     virtual operands or other side effects.  */
  if (cond_code != SSA_NAME
      && !((cond_code == EQ_EXPR || cond_code == NE_EXPR)
	   && FUNC5 (FUNC6 (cond, 0)) == SSA_NAME
	   && FUNC1 (FUNC6 (cond, 1))
	   && FUNC2 (FUNC7 (FUNC6 (cond, 1)))))
    return NULL_TREE;

  /* Extract the single variable used in the test into TEST_VAR.  */
  if (cond_code == SSA_NAME)
    test_var = cond;
  else
    test_var = FUNC6 (cond, 0);

  /* Now get the defining statement for TEST_VAR.  Skip this case if
     it's not defined by some MODIFY_EXPR.  */
  def = FUNC3 (test_var);
  if (FUNC5 (def) != MODIFY_EXPR)
    return NULL_TREE;

  def_rhs = FUNC6 (def, 1);

  /* If TEST_VAR is set by adding or subtracting a constant
     from an SSA_NAME, then it is interesting to us as we
     can adjust the constant in the conditional and thus
     eliminate the arithmetic operation.  */
  if (FUNC5 (def_rhs) == PLUS_EXPR
      || FUNC5 (def_rhs) == MINUS_EXPR)
    {
      tree op0 = FUNC6 (def_rhs, 0);
      tree op1 = FUNC6 (def_rhs, 1);

      /* The first operand must be an SSA_NAME and the second
	 operand must be a constant.  */
      if (FUNC5 (op0) != SSA_NAME
	  || !FUNC1 (op1)
	  || !FUNC2 (FUNC7 (op1)))
	return NULL_TREE;

      /* Don't propagate if the first operand occurs in
	 an abnormal PHI.  */
      if (FUNC4 (op0))
	return NULL_TREE;

      if (FUNC10 (test_var))
	{
	  enum tree_code new_code;
	  tree t;

	  /* If the variable was defined via X + C, then we must
	     subtract C from the constant in the conditional.
	     Otherwise we add C to the constant in the
	     conditional.  The result must fold into a valid
	     gimple operand to be optimizable.  */
	  new_code = (FUNC5 (def_rhs) == PLUS_EXPR
		      ? MINUS_EXPR : PLUS_EXPR);
	  t = FUNC11 (new_code, FUNC6 (cond, 1), op1, 0);
	  if (!FUNC16 (t))
	    return NULL_TREE;

	  new_cond = FUNC8 (cond_code, boolean_type_node, op0, t);
	}
    }

  /* These cases require comparisons of a naked SSA_NAME or
     comparison of an SSA_NAME against zero or one.  */
  else if (FUNC5 (cond) == SSA_NAME
	   || FUNC13 (FUNC6 (cond, 1))
	   || FUNC12 (FUNC6 (cond, 1)))
    {
      /* If TEST_VAR is set from a relational operation
	 between two SSA_NAMEs or a combination of an SSA_NAME
	 and a constant, then it is interesting.  */
      if (FUNC0 (def_rhs))
	{
	  tree op0 = FUNC6 (def_rhs, 0);
	  tree op1 = FUNC6 (def_rhs, 1);

	  /* Both operands of DEF_RHS must be SSA_NAMEs or
	     constants.  */
	  if ((FUNC5 (op0) != SSA_NAME
	       && !FUNC15 (op0))
	      || (FUNC5 (op1) != SSA_NAME
		  && !FUNC15 (op1)))
	    return NULL_TREE;

	  /* Don't propagate if the first operand occurs in
	     an abnormal PHI.  */
	  if (FUNC5 (op0) == SSA_NAME
	      && FUNC4 (op0))
	    return NULL_TREE;

	  /* Don't propagate if the second operand occurs in
	     an abnormal PHI.  */
	  if (FUNC5 (op1) == SSA_NAME
	      && FUNC4 (op1))
	    return NULL_TREE;

	  if (FUNC10 (test_var))
	    {
	      /* TEST_VAR was set from a relational operator.  */
	      new_cond = FUNC8 (FUNC5 (def_rhs),
				 boolean_type_node, op0, op1);

	      /* Invert the conditional if necessary.  */
	      if ((cond_code == EQ_EXPR
		   && FUNC13 (FUNC6 (cond, 1)))
		  || (cond_code == NE_EXPR
		      && FUNC12 (FUNC6 (cond, 1))))
		{
		  new_cond = FUNC14 (new_cond);

		  /* If we did not get a simple relational
		     expression or bare SSA_NAME, then we can
		     not optimize this case.  */
		  if (!FUNC0 (new_cond)
		      && FUNC5 (new_cond) != SSA_NAME)
		    new_cond = NULL_TREE;
		}
	    }
	}

      /* If TEST_VAR is set from a TRUTH_NOT_EXPR, then it
	 is interesting.  */
      else if (FUNC5 (def_rhs) == TRUTH_NOT_EXPR)
	{
	  enum tree_code new_code;

	  def_rhs = FUNC6 (def_rhs, 0);

	  /* DEF_RHS must be an SSA_NAME or constant.  */
	  if (FUNC5 (def_rhs) != SSA_NAME
	      && !FUNC15 (def_rhs))
	    return NULL_TREE;

	  /* Don't propagate if the operand occurs in
	     an abnormal PHI.  */
	  if (FUNC5 (def_rhs) == SSA_NAME
	      && FUNC4 (def_rhs))
	    return NULL_TREE;

	  if (cond_code == SSA_NAME
	      || (cond_code == NE_EXPR
		  && FUNC13 (FUNC6 (cond, 1)))
	      || (cond_code == EQ_EXPR
		  && FUNC12 (FUNC6 (cond, 1))))
	    new_code = EQ_EXPR;
	  else
	    new_code = NE_EXPR;

	  new_cond = FUNC8 (new_code, boolean_type_node, def_rhs,
			     FUNC9 (FUNC7 (def_rhs),
					   integer_zero_node));
	}

      /* If TEST_VAR was set from a cast of an integer type
	 to a boolean type or a cast of a boolean to an
	 integral, then it is interesting.  */
      else if (FUNC5 (def_rhs) == NOP_EXPR
	       || FUNC5 (def_rhs) == CONVERT_EXPR)
	{
	  tree outer_type;
	  tree inner_type;

	  outer_type = FUNC7 (def_rhs);
	  inner_type = FUNC7 (FUNC6 (def_rhs, 0));

	  if ((FUNC5 (outer_type) == BOOLEAN_TYPE
	       && FUNC2 (inner_type))
	      || (FUNC5 (inner_type) == BOOLEAN_TYPE
		  && FUNC2 (outer_type)))
	    ;
	  else if (FUNC2 (outer_type)
		   && FUNC2 (inner_type)
		   && FUNC5 (FUNC6 (def_rhs, 0)) == SSA_NAME
		   && FUNC17 (FUNC6 (def_rhs,
								      0)))
	    ;
	  else
	    return NULL_TREE;

	  /* Don't propagate if the operand occurs in
	     an abnormal PHI.  */
	  if (FUNC5 (FUNC6 (def_rhs, 0)) == SSA_NAME
	      && FUNC4 (FUNC6
						  (def_rhs, 0)))
	    return NULL_TREE;

	  if (FUNC10 (test_var))
	    {
	      enum tree_code new_code;
	      tree new_arg;

	      if (cond_code == SSA_NAME
		  || (cond_code == NE_EXPR
		      && FUNC13 (FUNC6 (cond, 1)))
		  || (cond_code == EQ_EXPR
		      && FUNC12 (FUNC6 (cond, 1))))
		new_code = NE_EXPR;
	      else
		new_code = EQ_EXPR;

	      new_arg = FUNC6 (def_rhs, 0);
	      new_cond = FUNC8 (new_code, boolean_type_node, new_arg,
				 FUNC9 (FUNC7 (new_arg),
					       integer_zero_node));
	    }
	}
    }

  *test_var_p = test_var;
  return new_cond;
}