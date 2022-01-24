#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dataflow {TYPE_1__* df; } ;
typedef  TYPE_4__* edge ;
typedef  int /*<<< orphan*/  bitmap ;
struct TYPE_11__ {int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;
struct TYPE_10__ {int flags; TYPE_3__* dest; TYPE_2__* src; } ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
struct TYPE_7__ {int /*<<< orphan*/  hardware_regs_used; } ;

/* Variables and functions */
 int EDGE_EH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  df_invalidated_by_call ; 
 TYPE_5__* FUNC2 (struct dataflow*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct dataflow *dflow, edge e)
{
  bitmap op1 = FUNC2 (dflow, e->src->index)->out;
  bitmap op2 = FUNC2 (dflow, e->dest->index)->in;
 
  /* Call-clobbered registers die across exception and call edges.  */
  /* ??? Abnormal call edges ignored for the moment, as this gets
     confused by sibling call edges, which crashes reg-stack.  */
  if (e->flags & EDGE_EH)
    FUNC0 (op1, op2, df_invalidated_by_call);
  else
    FUNC1 (op1, op2);

  FUNC1 (op1, dflow->df->hardware_regs_used);
}