#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int estimated_growth; scalar_t__ insns; } ;
struct cgraph_node {TYPE_2__ global; int /*<<< orphan*/  decl; int /*<<< orphan*/  needed; struct cgraph_edge* callers; } ;
struct cgraph_edge {TYPE_3__* caller; scalar_t__ inline_failed; struct cgraph_edge* next_caller; } ;
struct TYPE_4__ {scalar_t__ insns; } ;
struct TYPE_6__ {TYPE_1__ global; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int INT_MIN ; 
 scalar_t__ FUNC1 (int,TYPE_3__*,struct cgraph_node*) ; 

__attribute__((used)) static int
FUNC2 (struct cgraph_node *node)
{
  int growth = 0;
  struct cgraph_edge *e;
  if (node->global.estimated_growth != INT_MIN)
    return node->global.estimated_growth;

  for (e = node->callers; e; e = e->next_caller)
    if (e->inline_failed)
      growth += (FUNC1 (1, e->caller, node)
		 - e->caller->global.insns);

  /* ??? Wrong for self recursive functions or cases where we decide to not
     inline for different reasons, but it is not big deal as in that case
     we will keep the body around, but we will also avoid some inlining.  */
  if (!node->needed && !FUNC0 (node->decl))
    growth -= node->global.insns;

  node->global.estimated_growth = growth;
  return growth;
}