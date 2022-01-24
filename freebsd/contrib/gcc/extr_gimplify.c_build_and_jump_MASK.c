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
 int /*<<< orphan*/  GOTO_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  void_type_node ; 

tree
FUNC2 (tree *label_p)
{
  if (label_p == NULL)
    /* If there's nowhere to jump, just fall through.  */
    return NULL_TREE;

  if (*label_p == NULL_TREE)
    {
      tree label = FUNC1 ();
      *label_p = label;
    }

  return FUNC0 (GOTO_EXPR, void_type_node, *label_p);
}