#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {scalar_t__ (* use_aeabi_atexit ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  BCS_FN_BODY ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dk_no_check ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_use_cxa_atexit ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_pointer_node ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 TYPE_2__ targetm ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_zero_node ; 

tree
FUNC18 (tree decl)
{
  tree cleanup;
  tree compound_stmt;
  tree args;
  tree fcall;

  if (FUNC1 (FUNC0 (decl)))
    return void_zero_node;

  /* Call build_cleanup before we enter the anonymous function so that
     any access checks will be done relative to the current scope,
     rather than the scope of the anonymous function.  */
  FUNC3 (decl);

  /* Now start the function.  */
  cleanup = FUNC15 ();

  /* Now, recompute the cleanup.  It may contain SAVE_EXPRs that refer
     to the original function, rather than the anonymous one.  That
     will make the back-end think that nested functions are in use,
     which causes confusion.  */

  FUNC14 (dk_no_check);
  fcall = FUNC3 (decl);
  FUNC13 ();

  /* Create the body of the anonymous function.  */
  compound_stmt = FUNC2 (BCS_FN_BODY);
  FUNC9 (fcall);
  FUNC8 (compound_stmt);
  FUNC7 ();

  /* Call atexit with the cleanup function.  */
  FUNC6 (cleanup);
  FUNC12 (cleanup);
  cleanup = FUNC5 (ADDR_EXPR, cleanup, 0);
  if (flag_use_cxa_atexit)
    {
      args = FUNC17 (NULL_TREE,
			FUNC5 (ADDR_EXPR, FUNC11 (), 0),
			NULL_TREE);
      if (targetm.cxx.use_aeabi_atexit ())
	{
	  args = FUNC17 (NULL_TREE, cleanup, args);
	  args = FUNC17 (NULL_TREE, null_pointer_node, args);
	}
      else
	{
	  args = FUNC17 (NULL_TREE, null_pointer_node, args);
	  args = FUNC17 (NULL_TREE, cleanup, args);
	}
    }
  else
    args = FUNC17 (NULL_TREE, cleanup, NULL_TREE);
  return FUNC4 (FUNC10 (), args);
}