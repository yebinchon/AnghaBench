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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC11 (tree cond)
{
  tree op0 = FUNC4 (cond, 0);
  tree op1 = FUNC4 (cond, 1);
  tree def_stmt = FUNC1 (op0);

  while (def_stmt
	 && FUNC3 (def_stmt) == MODIFY_EXPR
	 && FUNC3 (FUNC4 (def_stmt, 1)) == SSA_NAME)
    def_stmt = FUNC1 (FUNC4 (def_stmt, 1));

  /* OP0 might have been a parameter, so first make sure it
     was defined by a MODIFY_EXPR.  */
  if (def_stmt && FUNC3 (def_stmt) == MODIFY_EXPR)
    {
      tree def_rhs = FUNC4 (def_stmt, 1);

      /* If either operand to the comparison is a pointer to
	 a function, then we can not apply this optimization
	 as some targets require function pointers to be
	 canonicalized and in this case this optimization would
	 eliminate a necessary canonicalization.  */
      if ((FUNC0 (FUNC5 (op0))
	   && FUNC3 (FUNC5 (FUNC5 (op0))) == FUNCTION_TYPE)
	  || (FUNC0 (FUNC5 (op1))
	      && FUNC3 (FUNC5 (FUNC5 (op1))) == FUNCTION_TYPE))
	return NULL;
	      
      /* Now make sure the RHS of the MODIFY_EXPR is a typecast.  */
      if ((FUNC3 (def_rhs) == NOP_EXPR
	   || FUNC3 (def_rhs) == CONVERT_EXPR)
	  && FUNC3 (FUNC4 (def_rhs, 0)) == SSA_NAME)
	{
	  tree def_rhs_inner = FUNC4 (def_rhs, 0);
	  tree def_rhs_inner_type = FUNC5 (def_rhs_inner);
	  tree new;

	  if (FUNC6 (def_rhs_inner_type)
	      > FUNC6 (FUNC5 (def_rhs)))
	    return NULL;

	  /* If the inner type of the conversion is a pointer to
	     a function, then we can not apply this optimization
	     as some targets require function pointers to be
	     canonicalized.  This optimization would result in
	     canonicalization of the pointer when it was not originally
	     needed/intended.  */
	  if (FUNC0 (def_rhs_inner_type)
	      && FUNC3 (FUNC5 (def_rhs_inner_type)) == FUNCTION_TYPE)
	    return NULL;

	  /* What we want to prove is that if we convert OP1 to
	     the type of the object inside the NOP_EXPR that the
	     result is still equivalent to SRC. 

	     If that is true, the build and return new equivalent
	     condition which uses the source of the typecast and the
	     new constant (which has only changed its type).  */
	  new = FUNC8 (FUNC3 (def_rhs), def_rhs_inner_type, op1);
	  FUNC2 (new);
	  if (FUNC9 (new) && FUNC10 (new, op1))
	    return FUNC7 (FUNC3 (cond), FUNC5 (cond),
			   def_rhs_inner, new);
	}
    }
  return NULL;
}