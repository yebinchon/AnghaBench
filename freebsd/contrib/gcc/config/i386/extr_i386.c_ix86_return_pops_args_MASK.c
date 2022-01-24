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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 int /*<<< orphan*/  KEEP_AGGREGATE_RETURN_POINTER ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ TARGET_RTD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ void_type_node ; 

int
FUNC10 (tree fundecl, tree funtype, int size)
{
  int rtd = TARGET_RTD && (!fundecl || FUNC1 (fundecl) != IDENTIFIER_NODE);

  /* Cdecl functions override -mrtd, and never pop the stack.  */
  if (! FUNC8 ("cdecl", FUNC5 (funtype))) {

    /* Stdcall and fastcall functions will pop the stack if not
       variable args.  */
    if (FUNC8 ("stdcall", FUNC5 (funtype))
        || FUNC8 ("fastcall", FUNC5 (funtype)))
      rtd = 1;

    if (rtd
        && (FUNC4 (funtype) == NULL_TREE
	    || (FUNC3 (FUNC9 (FUNC4 (funtype)))
		== void_type_node)))
      return size;
  }

  /* Lose any fake structure return argument if it is passed on the stack.  */
  if (FUNC6 (FUNC2 (funtype), fundecl)
      && !TARGET_64BIT
      && !KEEP_AGGREGATE_RETURN_POINTER)
    {
      int nregs = FUNC7 (funtype, fundecl);

      if (!nregs)
	return FUNC0 (Pmode);
    }

  return 0;
}