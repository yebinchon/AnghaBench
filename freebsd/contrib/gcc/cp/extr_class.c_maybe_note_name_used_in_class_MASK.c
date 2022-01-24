#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  splay_tree_value ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  scalar_t__ splay_tree ;
struct TYPE_2__ {scalar_t__ names_used; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int current_class_depth ; 
 TYPE_1__* current_class_stack ; 
 int /*<<< orphan*/  current_class_type ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ sk_class ; 
 int /*<<< orphan*/  splay_tree_compare_pointers ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (tree name, tree decl)
{
  splay_tree names_used;

  /* If we're not defining a class, there's nothing to do.  */
  if (!(FUNC1() == sk_class
	&& FUNC0 (current_class_type)))
    return;

  /* If there's already a binding for this NAME, then we don't have
     anything to worry about.  */
  if (FUNC2 (current_class_type, name,
		     /*protect=*/0, /*want_type=*/false))
    return;

  if (!current_class_stack[current_class_depth - 1].names_used)
    current_class_stack[current_class_depth - 1].names_used
      = FUNC4 (splay_tree_compare_pointers, 0, 0);
  names_used = current_class_stack[current_class_depth - 1].names_used;

  FUNC3 (names_used,
		     (splay_tree_key) name,
		     (splay_tree_value) decl);
}