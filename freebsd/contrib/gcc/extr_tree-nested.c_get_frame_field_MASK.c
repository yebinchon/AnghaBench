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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  scalar_t__ tree ;
struct nesting_info {scalar_t__ context; scalar_t__ frame_decl; struct nesting_info* outer; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nesting_info*) ; 
 scalar_t__ FUNC4 (struct nesting_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct nesting_info*) ; 
 scalar_t__ FUNC6 (struct nesting_info*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC7 (struct nesting_info *info, tree target_context,
		 tree field, tree_stmt_iterator *tsi)
{
  struct nesting_info *i;
  tree x;

  if (info->context == target_context)
    {
      /* Make sure frame_decl gets created.  */
      (void) FUNC5 (info);
      x = info->frame_decl;
    }
  else
    {
      x = FUNC3 (info);

      for (i = info->outer; i->context != target_context; i = i->outer)
	{
	  tree field = FUNC4 (i);

	  x = FUNC1 (INDIRECT_REF, FUNC0 (FUNC0 (x)), x);
	  x = FUNC2 (COMPONENT_REF, FUNC0 (field), x, field, NULL_TREE);
	  x = FUNC6 (info, x, tsi);
	}

      x = FUNC1 (INDIRECT_REF, FUNC0 (FUNC0 (x)), x);
    }

  x = FUNC2 (COMPONENT_REF, FUNC0 (field), x, field, NULL_TREE);
  return x;
}