#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cgraph_edge {int /*<<< orphan*/  callee; TYPE_2__* caller; int /*<<< orphan*/  loop_nest; scalar_t__ count; } ;
struct TYPE_4__ {scalar_t__ insns; } ;
struct TYPE_5__ {TYPE_1__ global; } ;

/* Variables and functions */
 int INT_MIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int max_count ; 

__attribute__((used)) static int
FUNC4 (struct cgraph_edge *edge)
{
  if (max_count)
    {
      int growth =
	FUNC2 (1, edge->caller, edge->callee);
      growth -= edge->caller->global.insns;

      /* Always prefer inlining saving code size.  */
      if (growth <= 0)
	return INT_MIN - growth;
      return ((int)((double)edge->count * INT_MIN / max_count)) / growth;
    }
  else
  {
    int nest = FUNC0 (edge->loop_nest, 8);
    int badness = FUNC1 (edge->callee) * 256;

    /* Decrease badness if call is nested.  */
    if (badness > 0)    
      badness >>= nest;
    else
      badness <<= nest;

    /* Make recursive inlining happen always after other inlining is done.  */
    if (FUNC3 (edge->caller, edge->callee, NULL))
      return badness + 1;
    else
      return badness;
  }
}