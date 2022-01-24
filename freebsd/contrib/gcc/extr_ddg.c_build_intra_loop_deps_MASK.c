#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct deps {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* ddg_ptr ;
typedef  TYPE_2__* ddg_node_ptr ;
struct TYPE_13__ {int /*<<< orphan*/  successors; int /*<<< orphan*/  insn; } ;
struct TYPE_12__ {int num_nodes; TYPE_2__* nodes; int /*<<< orphan*/  bb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct deps*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 TYPE_2__* FUNC11 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct deps*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct deps*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC16 (ddg_ptr g)
{
  int i;
  /* Hold the dependency analysis state during dependency calculations.  */
  struct deps tmp_deps;
  rtx head, tail, link;

  /* Build the dependence information, using the sched_analyze function.  */
  FUNC13 ();
  FUNC12 (&tmp_deps);

  /* Do the intra-block data dependence analysis for the given block.  */
  FUNC10 (g->bb, g->bb, &head, &tail);
  FUNC15 (&tmp_deps, head, tail);

  /* Build intra-loop data dependencies using the scheduler dependency
     analysis.  */
  for (i = 0; i < g->num_nodes; i++)
    {
      ddg_node_ptr dest_node = &g->nodes[i];

      if (! FUNC1 (dest_node->insn))
	continue;

      for (link = FUNC2 (dest_node->insn); link; link = FUNC4 (link, 1))
	{
	  ddg_node_ptr src_node = FUNC11 (g, FUNC4 (link, 0));

	  if (!src_node)
	    continue;

      	  FUNC5 (dest_node->insn, link);
	  FUNC7 (g, src_node, dest_node,
				 FUNC0 (src_node->insn));
	}

      /* If this insn modifies memory, add an edge to all insns that access
	 memory.  */
      if (FUNC14 (dest_node->insn))
	{
	  int j;

	  for (j = 0; j <= i; j++)
	    {
	      ddg_node_ptr j_node = &g->nodes[j];
	      if (FUNC14 (j_node->insn))
 		/* Don't bother calculating inter-loop dep if an intra-loop dep
		   already exists.  */
	      	  if (! FUNC3 (dest_node->successors, j))
		    FUNC6 (g, dest_node, j_node);
            }
        }
    }

  /* Free the INSN_LISTs.  */
  FUNC8 ();
  FUNC9 (&tmp_deps);
}