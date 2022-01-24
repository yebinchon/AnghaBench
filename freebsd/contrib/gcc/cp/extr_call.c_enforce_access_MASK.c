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
 scalar_t__ TREE_BINFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

bool
FUNC6 (tree basetype_path, tree decl, tree diag_decl)
{
  FUNC5 (FUNC0 (basetype_path) == TREE_BINFO);

  if (!FUNC3 (basetype_path, decl, true))
    {
      if (FUNC1 (decl))
	FUNC4 ("%q+#D is private", diag_decl);
      else if (FUNC2 (decl))
	FUNC4 ("%q+#D is protected", diag_decl);
      else
	FUNC4 ("%q+#D is inaccessible", diag_decl);
      FUNC4 ("within this context");
      return false;
    }

  return true;
}