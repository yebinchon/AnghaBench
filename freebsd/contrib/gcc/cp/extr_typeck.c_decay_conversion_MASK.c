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
 int /*<<< orphan*/  ADDR_EXPR ; 
 int ARRAY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int COMPOUND_EXPR ; 
 int CONSTRUCTOR ; 
 int FUNCTION_TYPE ; 
 int INDIRECT_REF ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int VAR_DECL ; 
 int VOID_TYPE ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 

tree
FUNC23 (tree exp)
{
  tree type;
  enum tree_code code;

  type = FUNC4 (exp);
  if (type == error_mark_node)
    return error_mark_node;

  if (FUNC22 (exp))
    {
      FUNC14 (exp, FUNC4 (exp));
      return error_mark_node;
    }

  exp = FUNC16 (exp);
  if (FUNC18 (exp))
    return error_mark_node;

  /* build_c_cast puts on a NOP_EXPR to make the result not an lvalue.
     Leave such NOP_EXPRs, since RHS is being used in non-lvalue context.  */
  code = FUNC1 (type);
  if (code == VOID_TYPE)
    {
      FUNC17 ("void value not ignored as it ought to be");
      return error_mark_node;
    }
  if (FUNC19 (exp))
    return error_mark_node;
  if (code == FUNCTION_TYPE || FUNC20 (exp))
    return FUNC10 (ADDR_EXPR, exp, 0);
  if (code == ARRAY_TYPE)
    {
      tree adr;
      tree ptrtype;

      if (FUNC1 (exp) == INDIRECT_REF)
	return FUNC8 (FUNC9 (FUNC4 (type)),
			  FUNC2 (exp, 0));

      if (FUNC1 (exp) == COMPOUND_EXPR)
	{
	  tree op1 = FUNC23 (FUNC2 (exp, 1));
	  return FUNC6 (COMPOUND_EXPR, FUNC4 (op1),
			 FUNC2 (exp, 0), op1);
	}

      if (!FUNC21 (exp)
	  && ! (FUNC1 (exp) == CONSTRUCTOR && FUNC3 (exp)))
	{
	  FUNC17 ("invalid use of non-lvalue array");
	  return error_mark_node;
	}

      ptrtype = FUNC9 (FUNC4 (type));

      if (FUNC1 (exp) == VAR_DECL)
	{
	  if (!FUNC15 (exp))
	    return error_mark_node;
	  adr = FUNC8 (ptrtype, FUNC7 (exp));
	  return adr;
	}
      /* This way is better for a COMPONENT_REF since it can
	 simplify the offset for a component.  */
      adr = FUNC10 (ADDR_EXPR, exp, 1);
      return FUNC12 (ptrtype, adr);
    }

  /* If a bitfield is used in a context where integral promotion
     applies, then the caller is expected to have used
     default_conversion.  That function promotes bitfields correctly
     before calling this function.  At this point, if we have a
     bitfield referenced, we may assume that is not subject to
     promotion, and that, therefore, the type of the resulting rvalue
     is the declared type of the bitfield.  */
  exp = FUNC11 (exp);

  /* We do not call rvalue() here because we do not want to wrap EXP
     in a NON_LVALUE_EXPR.  */

  /* [basic.lval]

     Non-class rvalues always have cv-unqualified types.  */
  type = FUNC4 (exp);
  if (!FUNC0 (type) && FUNC13 (type))
    exp = FUNC8 (FUNC5 (type), exp);

  return exp;
}