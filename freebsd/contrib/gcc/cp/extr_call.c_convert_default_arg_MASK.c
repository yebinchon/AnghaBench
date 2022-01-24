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
typedef  char* tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ DEFAULT_ARG ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,char*,int) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 char* error_mark_node ; 
 char* FUNC8 (char*,char*,char*) ; 
 char* FUNC9 (char*) ; 

tree
FUNC10 (tree type, tree arg, tree fn, int parmnum)
{
  /* If the ARG is an unparsed default argument expression, the
     conversion cannot be performed.  */
  if (FUNC2 (arg) == DEFAULT_ARG)
    {
      FUNC7 ("the default argument for parameter %d of %qD has "
	     "not yet been parsed",
	     parmnum, fn);
      return error_mark_node;
    }

  if (fn && FUNC1 (fn))
    arg = FUNC8 (fn, type, arg);

  arg = FUNC3 (arg);

  if (FUNC2 (arg) == CONSTRUCTOR)
    {
      arg = FUNC6 (type, arg);
      arg = FUNC5 (0, type, arg, LOOKUP_NORMAL,
					"default argument", fn, parmnum);
    }
  else
    {
      /* We must make a copy of ARG, in case subsequent processing
	 alters any part of it.  For example, during gimplification a
	 cast of the form (T) &X::f (where "f" is a member function)
	 will lead to replacing the PTRMEM_CST for &X::f with a
	 VAR_DECL.  We can avoid the copy for constants, since they
	 are never modified in place.  */
      if (!FUNC0 (arg))
	arg = FUNC9 (arg);
      arg = FUNC5 (0, type, arg, LOOKUP_NORMAL,
					"default argument", fn, parmnum);
      arg = FUNC4 (type, arg);
    }

  return arg;
}