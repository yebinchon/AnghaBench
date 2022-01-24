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
typedef  int TREE_USED ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ null_pointer_node ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ptr_type_node ; 

tree
FUNC3 (tree label)
{
  tree result;

  if (pedantic)
    FUNC2 ("taking the address of a label is non-standard");

  if (label == error_mark_node)
    return error_mark_node;

  label = FUNC1 (label);
  if (label == NULL_TREE)
    result = null_pointer_node;
  else
    {
      TREE_USED (label) = 1;
      result = FUNC0 (ADDR_EXPR, ptr_type_node, label);
      /* The current function in not necessarily uninlinable.
	 Computed gotos are incompatible with inlining, but the value
	 here could be used only in a diagnostic, for example.  */
    }

  return result;
}