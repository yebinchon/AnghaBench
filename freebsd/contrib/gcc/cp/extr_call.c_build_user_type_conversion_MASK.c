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
typedef  int /*<<< orphan*/  tree ;
struct z_candidate {TYPE_1__* second_conv; } ;
struct TYPE_2__ {scalar_t__ kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 struct z_candidate* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ck_ambig ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_mark_node ; 

tree
FUNC3 (tree totype, tree expr, int flags)
{
  struct z_candidate *cand
    = FUNC0 (totype, expr, flags);

  if (cand)
    {
      if (cand->second_conv->kind == ck_ambig)
	return error_mark_node;
      expr = FUNC2 (cand->second_conv, expr);
      return FUNC1 (expr);
    }
  return NULL_TREE;
}