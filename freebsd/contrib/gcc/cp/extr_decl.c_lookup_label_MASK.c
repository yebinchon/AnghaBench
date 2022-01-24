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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

tree
FUNC6 (tree id)
{
  tree decl;

  FUNC5 (TV_NAME_LOOKUP);
  /* You can't use labels at global scope.  */
  if (current_function_decl == NULL_TREE)
    {
      FUNC3 ("label %qE referenced outside of any function", id);
      FUNC2 (TV_NAME_LOOKUP, NULL_TREE);
    }

  /* See if we've already got this label.  */
  decl = FUNC1 (id);
  if (decl != NULL_TREE && FUNC0 (decl) == current_function_decl)
    FUNC2 (TV_NAME_LOOKUP, decl);

  decl = FUNC4 (id, /*local_p=*/0);
  FUNC2 (TV_NAME_LOOKUP, decl);
}