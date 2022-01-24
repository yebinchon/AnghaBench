#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct niter_desc {int simple_p; TYPE_1__* in_edge; TYPE_1__* out_edge; } ;
struct loop {int /*<<< orphan*/  latch; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_9__ {struct loop* loop_father; } ;
struct TYPE_8__ {int flags; TYPE_2__* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int EDGE_FALLTHRU ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct niter_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct loop *loop, edge e, struct niter_desc *desc)
{
  basic_block exit_bb;
  rtx condition, at;
  edge ein;

  exit_bb = e->src;
  desc->simple_p = false;

  /* It must belong directly to the loop.  */
  if (exit_bb->loop_father != loop)
    return;

  /* It must be tested (at least) once during any iteration.  */
  if (!FUNC3 (CDI_DOMINATORS, loop->latch, exit_bb))
    return;

  /* It must end in a simple conditional jump.  */
  if (!FUNC2 (FUNC0 (exit_bb)))
    return;

  ein = FUNC1 (exit_bb, 0);
  if (ein == e)
    ein = FUNC1 (exit_bb, 1);

  desc->out_edge = e;
  desc->in_edge = ein;

  /* Test whether the condition is suitable.  */
  if (!(condition = FUNC4 (FUNC0 (ein->src), &at, false, false)))
    return;

  if (ein->flags & EDGE_FALLTHRU)
    {
      condition = FUNC6 (condition);
      if (!condition)
	return;
    }

  /* Check that we are able to determine number of iterations and fill
     in information about it.  */
  FUNC5 (loop, at, condition, desc);
}