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
typedef  scalar_t__ t_bool ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_not_analyzed_yet ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 struct loop* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ t_false ; 
 scalar_t__ t_true ; 

__attribute__((used)) static tree
FUNC11 (tree loop_phi_node, 
			   tree init_cond)
{
  int i;
  tree evolution_function = chrec_not_analyzed_yet;
  struct loop *loop = FUNC9 (loop_phi_node);
  basic_block bb;
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC8 (dump_file, "(analyze_evolution_in_loop \n");
      FUNC8 (dump_file, "  (loop_phi_node = ");
      FUNC10 (dump_file, loop_phi_node, 0);
      FUNC8 (dump_file, ")\n");
    }
  
  for (i = 0; i < FUNC2 (loop_phi_node); i++)
    {
      tree arg = FUNC0 (loop_phi_node, i);
      tree ssa_chain, ev_fn;
      t_bool res;

      /* Select the edges that enter the loop body.  */
      bb = FUNC1 (loop_phi_node, i)->src;
      if (!FUNC6 (loop, bb))
	continue;
      
      if (FUNC4 (arg) == SSA_NAME)
	{
	  ssa_chain = FUNC3 (arg);

	  /* Pass in the initial condition to the follow edge function.  */
	  ev_fn = init_cond;
	  res = FUNC7 (loop, ssa_chain, loop_phi_node, &ev_fn, 0);
	}
      else
	res = t_false;
	      
      /* When it is impossible to go back on the same
	 loop_phi_node by following the ssa edges, the
	 evolution is represented by a peeled chrec, i.e. the
	 first iteration, EV_FN has the value INIT_COND, then
	 all the other iterations it has the value of ARG.  
	 For the moment, PEELED_CHREC nodes are not built.  */
      if (res != t_true)
	ev_fn = chrec_dont_know;
      
      /* When there are multiple back edges of the loop (which in fact never
	 happens currently, but nevertheless), merge their evolutions.  */
      evolution_function = FUNC5 (evolution_function, ev_fn);
    }
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC8 (dump_file, "  (evolution_function = ");
      FUNC10 (dump_file, evolution_function, 0);
      FUNC8 (dump_file, "))\n");
    }
  
  return evolution_function;
}