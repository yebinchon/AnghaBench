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
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_errno_math ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC12 (tree fndecl, tree arglist)
{
  enum built_in_function fcode = FUNC0 (fndecl);
  tree arg;

  if (! FUNC11 (arglist, REAL_TYPE, VOID_TYPE))
    return 0;

  arg = FUNC2 (arglist);
  /* Integer rounding functions are idempotent.  */
  if (fcode == FUNC6 (arg))
    return arg;

  /* If argument is already integer valued, and we don't need to worry
     about setting errno, there's no need to perform rounding.  */
  if (! flag_errno_math && FUNC8 (arg))
    return arg;

  if (optimize)
    {
      tree arg0 = FUNC10 (arg);
      tree ftype = FUNC1 (FUNC1 (fndecl));
      tree newtype = FUNC1 (arg0);
      tree decl;

      if (FUNC3 (newtype) < FUNC3 (ftype)
	  && (decl = FUNC9 (newtype, fcode)))
	{
	  arglist =
	    FUNC5 (NULL_TREE, FUNC7 (newtype, arg0));
	  return FUNC7 (ftype,
			       FUNC4 (decl, arglist));
	}
    }
  return 0;
}