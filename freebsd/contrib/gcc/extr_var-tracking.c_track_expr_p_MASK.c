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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ MAX_VAR_PARTS ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC16 (tree expr)
{
  rtx decl_rtl;
  tree realdecl;

  /* If EXPR is not a parameter or a variable do not track it.  */
  if (FUNC11 (expr) != VAR_DECL && FUNC11 (expr) != PARM_DECL)
    return 0;

  /* It also must have a name...  */
  if (!FUNC4 (expr))
    return 0;

  /* ... and a RTL assigned to it.  */
  decl_rtl = FUNC6 (expr);
  if (!decl_rtl)
    return 0;
  
  /* If this expression is really a debug alias of some other declaration, we 
     don't need to track this expression if the ultimate declaration is
     ignored.  */
  realdecl = expr;
  if (FUNC2 (realdecl) && FUNC1 (realdecl))
    {
      realdecl = FUNC1 (realdecl);
      /* ??? We don't yet know how to emit DW_OP_piece for variable
	 that has been SRA'ed.  */
      if (!FUNC5 (realdecl))
	return 0;
    }

  /* Do not track EXPR if REALDECL it should be ignored for debugging
     purposes.  */ 
  if (FUNC3 (realdecl))
    return 0;

  /* Do not track global variables until we are able to emit correct location
     list for them.  */
  if (FUNC12 (realdecl))
    return 0;

  /* When the EXPR is a DECL for alias of some variable (see example)
     the TREE_STATIC flag is not used.  Disable tracking all DECLs whose
     DECL_RTL contains SYMBOL_REF.

     Example:
     extern char **_dl_argv_internal __attribute__ ((alias ("_dl_argv")));
     char **_dl_argv;
  */
  if (FUNC9 (decl_rtl)
      && FUNC15 (FUNC14 (decl_rtl, 0)))
    return 0;

  /* If RTX is a memory it should not be very large (because it would be
     an array or struct).  */
  if (FUNC9 (decl_rtl))
    {
      /* Do not track structures and arrays.  */
      if (FUNC7 (decl_rtl) == BLKmode
	  || FUNC0 (FUNC13 (realdecl)))
	return 0;
      if (FUNC10 (decl_rtl)
	  && FUNC8 (FUNC10 (decl_rtl)) > MAX_VAR_PARTS)
	return 0;
    }

  return 1;
}