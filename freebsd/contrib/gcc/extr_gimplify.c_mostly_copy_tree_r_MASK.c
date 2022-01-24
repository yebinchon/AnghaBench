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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int BIND_EXPR ; 
 int BLOCK ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int SAVE_EXPR ; 
 int TARGET_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ tcc_constant ; 
 scalar_t__ tcc_declaration ; 
 scalar_t__ tcc_type ; 

__attribute__((used)) static tree
FUNC4 (tree *tp, int *walk_subtrees, void *data)
{
  enum tree_code code = FUNC0 (*tp);
  /* Don't unshare types, decls, constants and SAVE_EXPR nodes.  */
  if (FUNC1 (code) == tcc_type
      || FUNC1 (code) == tcc_declaration
      || FUNC1 (code) == tcc_constant
      || code == SAVE_EXPR || code == TARGET_EXPR
      /* We can't do anything sensible with a BLOCK used as an expression,
	 but we also can't just die when we see it because of non-expression
	 uses.  So just avert our eyes and cross our fingers.  Silly Java.  */
      || code == BLOCK)
    *walk_subtrees = 0;
  else
    {
      FUNC3 (code != BIND_EXPR);
      FUNC2 (tp, walk_subtrees, data);
    }

  return NULL_TREE;
}