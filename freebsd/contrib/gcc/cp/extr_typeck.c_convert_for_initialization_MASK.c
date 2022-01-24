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
 int CONV_FORCE_TEMP ; 
 int CONV_IMPLICIT ; 
 int ERROR_MARK ; 
 int FUNCTION_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int METHOD_TYPE ; 
 int NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int REFERENCE_TYPE ; 
 int FUNC1 (scalar_t__) ; 
 int TREE_LIST ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,char const*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int errorcount ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int warningcount ; 

tree
FUNC14 (tree exp, tree type, tree rhs, int flags,
			    const char *errtype, tree fndecl, int parmnum)
{
  enum tree_code codel = FUNC1 (type);
  tree rhstype;
  enum tree_code coder;

  /* build_c_cast puts on a NOP_EXPR to make the result not an lvalue.
     Strip such NOP_EXPRs, since RHS is used in non-lvalue context.  */
  if (FUNC1 (rhs) == NOP_EXPR
      && FUNC3 (rhs) == FUNC3 (FUNC2 (rhs, 0))
      && codel != REFERENCE_TYPE)
    rhs = FUNC2 (rhs, 0);

  if (type == error_mark_node
      || rhs == error_mark_node
      || (FUNC1 (rhs) == TREE_LIST && FUNC4 (rhs) == error_mark_node))
    return error_mark_node;

  if ((FUNC1 (FUNC3 (rhs)) == ARRAY_TYPE
       && FUNC1 (type) != ARRAY_TYPE
       && (FUNC1 (type) != REFERENCE_TYPE
	   || FUNC1 (FUNC3 (type)) != ARRAY_TYPE))
      || (FUNC1 (FUNC3 (rhs)) == FUNCTION_TYPE
	  && (FUNC1 (type) != REFERENCE_TYPE
	      || FUNC1 (FUNC3 (type)) != FUNCTION_TYPE))
      || FUNC1 (FUNC3 (rhs)) == METHOD_TYPE)
    rhs = FUNC7 (rhs);

  rhstype = FUNC3 (rhs);
  coder = FUNC1 (rhstype);

  if (coder == ERROR_MARK)
    return error_mark_node;

  /* We accept references to incomplete types, so we can
     return here before checking if RHS is of complete type.  */

  if (codel == REFERENCE_TYPE)
    {
      /* This should eventually happen in convert_arguments.  */
      int savew = 0, savee = 0;

      if (fndecl)
	savew = warningcount, savee = errorcount;
      rhs = FUNC9 (type, rhs, /*decl=*/NULL_TREE,
				  /*cleanup=*/NULL);
      if (fndecl)
	{
	  if (warningcount > savew)
	    FUNC13 (0, "in passing argument %P of %q+D", parmnum, fndecl);
	  else if (errorcount > savee)
	    FUNC8 ("in passing argument %P of %q+D", parmnum, fndecl);
	}
      return rhs;
    }

  if (exp != 0)
    exp = FUNC12 (exp);
  if (exp == error_mark_node)
    return error_mark_node;

  rhstype = FUNC10 (rhstype);

  type = FUNC5 (type);

  if (FUNC0 (type))
    return FUNC11 (type, rhs, CONV_IMPLICIT|CONV_FORCE_TEMP, flags);

  return FUNC6 (type, rhs, errtype, fndecl, parmnum);
}