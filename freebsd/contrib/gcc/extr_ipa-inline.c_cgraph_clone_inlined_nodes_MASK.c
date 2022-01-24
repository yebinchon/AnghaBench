#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cgraph_node {int dummy; } ;
struct cgraph_edge {int /*<<< orphan*/  inline_failed; struct cgraph_edge* next_callee; TYPE_5__* callee; TYPE_4__* caller; int /*<<< orphan*/  loop_nest; int /*<<< orphan*/  count; } ;
struct TYPE_8__ {TYPE_4__* inlined_to; scalar_t__ insns; } ;
struct TYPE_10__ {struct cgraph_edge* callees; TYPE_3__ global; int /*<<< orphan*/  decl; int /*<<< orphan*/  needed; TYPE_1__* callers; } ;
struct TYPE_7__ {TYPE_4__* inlined_to; } ;
struct TYPE_9__ {TYPE_2__ global; } ;
struct TYPE_6__ {int /*<<< orphan*/  next_caller; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct cgraph_node* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_edge*,struct cgraph_node*) ; 
 scalar_t__ flag_unit_at_a_time ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  nfunctions_inlined ; 
 int /*<<< orphan*/  overall_insns ; 

void
FUNC4 (struct cgraph_edge *e, bool duplicate, bool update_original)
{
  if (duplicate)
    {
      /* We may eliminate the need for out-of-line copy to be output.
	 In that case just go ahead and re-use it.  */
      if (!e->callee->callers->next_caller
	  && !e->callee->needed
	  && flag_unit_at_a_time)
	{
	  FUNC3 (!e->callee->global.inlined_to);
	  if (FUNC0 (e->callee->decl))
	    overall_insns -= e->callee->global.insns, nfunctions_inlined++;
	  duplicate = false;
	}
      else
	{
	  struct cgraph_node *n;
	  n = FUNC1 (e->callee, e->count, e->loop_nest, 
				 update_original);
	  FUNC2 (e, n);
	}
    }

  if (e->caller->global.inlined_to)
    e->callee->global.inlined_to = e->caller->global.inlined_to;
  else
    e->callee->global.inlined_to = e->caller;

  /* Recursively clone all bodies.  */
  for (e = e->callee->callees; e; e = e->next_callee)
    if (!e->inline_failed)
      FUNC4 (e, duplicate, update_original);
}