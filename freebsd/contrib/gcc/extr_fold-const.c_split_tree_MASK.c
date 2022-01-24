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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ MINUS_EXPR ; 
 int PLUS_EXPR ; 
 scalar_t__ REAL_CST ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (tree in, enum tree_code code, tree *conp, tree *litp,
	    tree *minus_litp, int negate_p)
{
  tree var = 0;

  *conp = 0;
  *litp = 0;
  *minus_litp = 0;

  /* Strip any conversions that don't change the machine mode or signedness.  */
  FUNC1 (in);

  if (FUNC2 (in) == INTEGER_CST || FUNC2 (in) == REAL_CST)
    *litp = in;
  else if (FUNC2 (in) == code
	   || (! FUNC0 (FUNC5 (in))
	       /* We can associate addition and subtraction together (even
		  though the C standard doesn't say so) for integers because
		  the value is not affected.  For reals, the value might be
		  affected, so we can't.  */
	       && ((code == PLUS_EXPR && FUNC2 (in) == MINUS_EXPR)
		   || (code == MINUS_EXPR && FUNC2 (in) == PLUS_EXPR))))
    {
      tree op0 = FUNC4 (in, 0);
      tree op1 = FUNC4 (in, 1);
      int neg1_p = FUNC2 (in) == MINUS_EXPR;
      int neg_litp_p = 0, neg_conp_p = 0, neg_var_p = 0;

      /* First see if either of the operands is a literal, then a constant.  */
      if (FUNC2 (op0) == INTEGER_CST || FUNC2 (op0) == REAL_CST)
	*litp = op0, op0 = 0;
      else if (FUNC2 (op1) == INTEGER_CST || FUNC2 (op1) == REAL_CST)
	*litp = op1, neg_litp_p = neg1_p, op1 = 0;

      if (op0 != 0 && FUNC3 (op0))
	*conp = op0, op0 = 0;
      else if (op1 != 0 && FUNC3 (op1))
	*conp = op1, neg_conp_p = neg1_p, op1 = 0;

      /* If we haven't dealt with either operand, this is not a case we can
	 decompose.  Otherwise, VAR is either of the ones remaining, if any.  */
      if (op0 != 0 && op1 != 0)
	var = in;
      else if (op0 != 0)
	var = op0;
      else
	var = op1, neg_var_p = neg1_p;

      /* Now do any needed negations.  */
      if (neg_litp_p)
	*minus_litp = *litp, *litp = 0;
      if (neg_conp_p)
	*conp = FUNC6 (*conp);
      if (neg_var_p)
	var = FUNC6 (var);
    }
  else if (FUNC3 (in))
    *conp = in;
  else
    var = in;

  if (negate_p)
    {
      if (*litp)
	*minus_litp = *litp, *litp = 0;
      else if (*minus_litp)
	*litp = *minus_litp, *minus_litp = 0;
      *conp = FUNC6 (*conp);
      var = FUNC6 (var);
    }

  return var;
}