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
typedef  scalar_t__ t_bool ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 TYPE_1__* FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct loop*,scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ FUNC5 (struct loop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct loop*,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int) ; 
 struct loop* FUNC8 (scalar_t__) ; 
 scalar_t__ t_false ; 
 scalar_t__ t_true ; 

__attribute__((used)) static t_bool
FUNC9 (struct loop *outer_loop,
				tree loop_phi_node, 
				tree halting_phi,
				tree *evolution_of_loop, int limit)
{
  struct loop *loop = FUNC8 (loop_phi_node);
  tree ev = FUNC4 (loop, FUNC3 (loop_phi_node));

  /* Sometimes, the inner loop is too difficult to analyze, and the
     result of the analysis is a symbolic parameter.  */
  if (ev == FUNC3 (loop_phi_node))
    {
      t_bool res = t_false;
      int i;

      for (i = 0; i < FUNC2 (loop_phi_node); i++)
	{
	  tree arg = FUNC0 (loop_phi_node, i);
	  basic_block bb;

	  /* Follow the edges that exit the inner loop.  */
	  bb = FUNC1 (loop_phi_node, i)->src;
	  if (!FUNC6 (loop, bb))
	    res = FUNC7 (outer_loop, loop_phi_node,
					  arg, halting_phi,
					  evolution_of_loop, limit);
	  if (res == t_true)
	    break;
	}

      /* If the path crosses this loop-phi, give up.  */
      if (res == t_true)
	*evolution_of_loop = chrec_dont_know;

      return res;
    }

  /* Otherwise, compute the overall effect of the inner loop.  */
  ev = FUNC5 (loop, ev);
  return FUNC7 (outer_loop, loop_phi_node, ev, halting_phi,
				 evolution_of_loop, limit);
}