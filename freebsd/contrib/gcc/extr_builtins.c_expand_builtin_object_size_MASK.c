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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC13 (tree exp)
{
  tree ost;
  int object_size_type;
  tree fndecl = FUNC9 (exp);
  tree arglist = FUNC4 (exp, 1);
  location_t locus = FUNC0 (exp);

  if (!FUNC12 (arglist, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    {
      FUNC7 ("%Hfirst argument of %D must be a pointer, second integer constant",
	     &locus, fndecl);
      FUNC8 ();
      return const0_rtx;
    }

  ost = FUNC5 (FUNC2 (arglist));
  FUNC1 (ost);

  if (FUNC3 (ost) != INTEGER_CST
      || FUNC10 (ost) < 0
      || FUNC6 (ost, 3) > 0)
    {
      FUNC7 ("%Hlast argument of %D is not integer constant between 0 and 3",
	     &locus, fndecl);
      FUNC8 ();
      return const0_rtx;
    }

  object_size_type = FUNC11 (ost, 0);

  return object_size_type < 2 ? constm1_rtx : const0_rtx;
}