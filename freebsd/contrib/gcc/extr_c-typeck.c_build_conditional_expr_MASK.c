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
 int ARRAY_TYPE ; 
 int BLOCK_POINTER_TYPE ; 
 int COMPLEX_TYPE ; 
 int /*<<< orphan*/  COND_EXPR ; 
 scalar_t__ ERROR_MARK ; 
 scalar_t__ FUNCTION_TYPE ; 
 int INTEGER_TYPE ; 
 int POINTER_TYPE ; 
 int REAL_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ VOID_TYPE ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ flag_cond_mismatch ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ null_pointer_node ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  skip_evaluation ; 
 scalar_t__ FUNC20 (scalar_t__,int*) ; 
 scalar_t__ void_type_node ; 
 scalar_t__ warn_sign_compare ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC22 (tree ifexp, tree op1, tree op2)
{
  tree type1;
  tree type2;
  enum tree_code code1;
  enum tree_code code2;
  tree result_type = NULL;
  tree orig_op1 = op1, orig_op2 = op2;

  /* Promote both alternatives.  */

  if (FUNC0 (FUNC3 (op1)) != VOID_TYPE)
    op1 = FUNC14 (op1);
  if (FUNC0 (FUNC3 (op2)) != VOID_TYPE)
    op2 = FUNC14 (op2);

  if (FUNC0 (ifexp) == ERROR_MARK
      || FUNC0 (FUNC3 (op1)) == ERROR_MARK
      || FUNC0 (FUNC3 (op2)) == ERROR_MARK)
    return error_mark_node;

  type1 = FUNC3 (op1);
  code1 = FUNC0 (type1);
  type2 = FUNC3 (op2);
  code2 = FUNC0 (type2);

  /* C90 does not permit non-lvalue arrays in conditional expressions.
     In C99 they will be pointers by now.  */
  if (code1 == ARRAY_TYPE || code2 == ARRAY_TYPE)
    {
      FUNC15 ("non-lvalue array in conditional expression");
      return error_mark_node;
    }

  /* Quickly detect the usual case where op1 and op2 have the same type
     after promotion.  */
  if (FUNC4 (type1) == FUNC4 (type2))
    {
      if (type1 == type2)
	result_type = type1;
      else
	result_type = FUNC4 (type1);
    }
  else if ((code1 == INTEGER_TYPE || code1 == REAL_TYPE
	    || code1 == COMPLEX_TYPE)
	   && (code2 == INTEGER_TYPE || code2 == REAL_TYPE
	       || code2 == COMPLEX_TYPE))
    {
      result_type = FUNC9 (type1, type2);

      /* If -Wsign-compare, warn here if type1 and type2 have
	 different signedness.  We'll promote the signed to unsigned
	 and later code won't know it used to be different.
	 Do this check on the original types, so that explicit casts
	 will be considered, but default promotions won't.  */
      if (warn_sign_compare && !skip_evaluation)
	{
	  int unsigned_op1 = FUNC5 (FUNC3 (orig_op1));
	  int unsigned_op2 = FUNC5 (FUNC3 (orig_op2));

	  if (unsigned_op1 ^ unsigned_op2)
	    {
	      bool ovf;

	      /* Do not warn if the result type is signed, since the
		 signed type will only be chosen if it can represent
		 all the values of the unsigned type.  */
	      if (!FUNC5 (result_type))
		/* OK */;
	      /* Do not warn if the signed quantity is an unsuffixed
		 integer literal (or some static constant expression
		 involving such literals) and it is non-negative.  */
	      else if ((unsigned_op2
			&& FUNC20 (op1, &ovf))
		       || (unsigned_op1
			   && FUNC20 (op2, &ovf)))
		/* OK */;
	      else
		FUNC21 (0, "signed and unsigned type in conditional expression");
	    }
	}
    }
  else if (code1 == VOID_TYPE || code2 == VOID_TYPE)
    {
      if (pedantic && (code1 != VOID_TYPE || code2 != VOID_TYPE))
	FUNC18 ("ISO C forbids conditional expr with only one void side");
      result_type = void_type_node;
    }
  /* APPLE LOCAL begin blocks 6065211 */
  else if ((code1 == POINTER_TYPE
      || code1 == BLOCK_POINTER_TYPE)
     && (code2 == POINTER_TYPE
	  || code2 == BLOCK_POINTER_TYPE))
  /* APPLE LOCAL end blocks 6065211 */
    {
      if (FUNC11 (type1, type2))
	result_type = FUNC10 (type1, type2);
      else if (FUNC17 (orig_op1))
	result_type = FUNC19 (type2, type1);
      else if (FUNC17 (orig_op2))
	result_type = FUNC19 (type1, type2);
      /* APPLE LOCAL begin blocks 6065211 */
      else if (code2 == BLOCK_POINTER_TYPE
	   && FUNC6 (FUNC3 (type1)))
	 result_type = type2;
      else if (code1 == BLOCK_POINTER_TYPE
	   && FUNC6 (FUNC3 (type2)))
	 result_type = type1;
      /* APPLE LOCAL end blocks 6065211 */
      else if (FUNC6 (FUNC3 (type1)))
	{
	  if (pedantic && FUNC0 (FUNC3 (type2)) == FUNCTION_TYPE)
	    FUNC18 ("ISO C forbids conditional expr between "
		     "%<void *%> and function pointer");
	  result_type = FUNC7 (FUNC19 (FUNC3 (type1),
							  FUNC3 (type2)));
	}
      else if (FUNC6 (FUNC3 (type2)))
	{
	  if (pedantic && FUNC0 (FUNC3 (type1)) == FUNCTION_TYPE)
	    FUNC18 ("ISO C forbids conditional expr between "
		     "%<void *%> and function pointer");
	  result_type = FUNC7 (FUNC19 (FUNC3 (type2),
							  FUNC3 (type1)));
	}
      else
	{
	  FUNC18 ("pointer type mismatch in conditional expression");
	  result_type = FUNC7 (void_type_node);
	}
    }
  else if (code1 == POINTER_TYPE && code2 == INTEGER_TYPE)
    {
      if (!FUNC17 (orig_op2))
	FUNC18 ("pointer/integer type mismatch in conditional expression");
      else
	{
	  op2 = null_pointer_node;
	}
      result_type = type1;
    }
  else if (code2 == POINTER_TYPE && code1 == INTEGER_TYPE)
    {
      if (!FUNC17 (orig_op1))
	FUNC18 ("pointer/integer type mismatch in conditional expression");
      else
	{
	  op1 = null_pointer_node;
	}
      result_type = type2;
    }
  /* APPLE LOCAL begin radar 5732232 - blocks (C++ co) */
  /* APPLE LOCAL radar 5957801 */
  else if (code1 == BLOCK_POINTER_TYPE && code2 == INTEGER_TYPE)
    {
      if (!FUNC17 (orig_op2))
	FUNC15 ("block pointer/integer type mismatch in conditional expression");
      else
	{
	  op2 = FUNC12 (type1, null_pointer_node);
	}
      result_type = type1;
    }
  /* APPLE LOCAL radar 5957801 */
  else if (code2 == BLOCK_POINTER_TYPE && code1 == INTEGER_TYPE)
    {
      if (!FUNC17 (orig_op1))
	FUNC15 ("block pointer/integer type mismatch in conditional expression");
      else
	{
	  op1 = FUNC12 (type2, null_pointer_node);
	}
      result_type = type2;
    }
  
  /* APPLE LOCAL end radar 5732232 - blocks (C++ co) */
  if (!result_type)
    {
      if (flag_cond_mismatch)
	result_type = void_type_node;
      else
	{
	  FUNC15 ("type mismatch in conditional expression");
	  return error_mark_node;
	}
    }

  /* Merge const and volatile flags of the incoming types.  */
  result_type
    = FUNC8 (result_type,
			  FUNC1 (op1) || FUNC1 (op2),
			  FUNC2 (op1) || FUNC2 (op2));

  if (result_type != FUNC3 (op1))
    op1 = FUNC13 (result_type, op1);
  if (result_type != FUNC3 (op2))
    op2 = FUNC13 (result_type, op2);

  return FUNC16 (COND_EXPR, result_type, ifexp, op1, op2);
}