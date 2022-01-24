#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_7__ {int /*<<< orphan*/  self_insns; scalar_t__ inlinable; int /*<<< orphan*/  disregard_inline_limits; } ;
struct TYPE_6__ {int /*<<< orphan*/  insns; } ;
struct cgraph_node {int analyzed; TYPE_3__ local; TYPE_2__ global; int /*<<< orphan*/ * decl; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disregard_inline_limits ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {TYPE_1__ tree_inlining; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cgraph_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_node*) ; 
 int /*<<< orphan*/ * current_function_decl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ flag_really_no_inline ; 
 int /*<<< orphan*/  flag_unit_at_a_time ; 
 int /*<<< orphan*/  FUNC4 (struct cgraph_node*) ; 
 TYPE_4__ lang_hooks ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9 (struct cgraph_node *node)
{
  tree decl = node->decl;

  current_function_decl = decl;
  FUNC6 (FUNC0 (decl));
  FUNC2 (node);

  /* First kill forward declaration so reverse inlining works properly.  */
  FUNC1 (node, decl);

  node->local.inlinable = FUNC8 (decl);
  if (!flag_unit_at_a_time)
    node->local.self_insns = FUNC3 (decl);
  if (node->local.inlinable)
    node->local.disregard_inline_limits
      = lang_hooks.tree_inlining.disregard_inline_limits (decl);
  FUNC4 (node);
  if (flag_really_no_inline && !node->local.disregard_inline_limits)
    node->local.inlinable = 0;
  /* Inlining characteristics are maintained by the cgraph_mark_inline.  */
  node->global.insns = node->local.self_insns;

  node->analyzed = true;
  FUNC5 ();
  current_function_decl = NULL;
}