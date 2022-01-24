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
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ BUILT_IN_MD ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int END_BUILTINS ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

enum built_in_function
FUNC15 (tree t)
{
  tree fndecl, arglist, parmlist;
  tree argtype, parmtype;

  if (FUNC8 (t) != CALL_EXPR
      || FUNC8 (FUNC9 (t, 0)) != ADDR_EXPR)
    return END_BUILTINS;

  fndecl = FUNC14 (t);
  if (fndecl == NULL_TREE
      || FUNC8 (fndecl) != FUNCTION_DECL
      || ! FUNC1 (fndecl)
      || FUNC2 (fndecl) == BUILT_IN_MD)
    return END_BUILTINS;

  arglist = FUNC9 (t, 1);
  parmlist = FUNC12 (FUNC10 (fndecl));
  for (; parmlist; parmlist = FUNC7 (parmlist))
    {
      /* If a function doesn't take a variable number of arguments,
	 the last element in the list will have type `void'.  */
      parmtype = FUNC11 (parmlist);
      if (FUNC13 (parmtype))
	{
	  if (arglist)
	    return END_BUILTINS;
	  return FUNC3 (fndecl);
	}

      if (! arglist)
	return END_BUILTINS;

      argtype = FUNC10 (FUNC11 (arglist));

      if (FUNC6 (parmtype))
	{
	  if (! FUNC6 (argtype))
	    return END_BUILTINS;
	}
      else if (FUNC0 (parmtype))
	{
	  if (! FUNC0 (argtype))
	    return END_BUILTINS;
	}
      else if (FUNC5 (parmtype))
	{
	  if (! FUNC5 (argtype))
	    return END_BUILTINS;
	}
      else if (FUNC4 (parmtype))
	{
	  if (! FUNC4 (argtype))
	    return END_BUILTINS;
	}
      else
	return END_BUILTINS;

      arglist = FUNC7 (arglist);
    }

  /* Variable-length argument list.  */
  return FUNC3 (fndecl);
}