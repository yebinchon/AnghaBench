#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* constraint_graph_t ;
typedef  int /*<<< orphan*/  bitmap ;
struct TYPE_3__ {unsigned int size; int /*<<< orphan*/ * preds; int /*<<< orphan*/ * implicit_preds; scalar_t__* succs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int FIRST_REF_NODE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  predbitmap_obstack ; 
 int /*<<< orphan*/  varinfo_t ; 
 int /*<<< orphan*/  varmap ; 
 scalar_t__* FUNC5 (scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC6 (constraint_graph_t graph)
{
  unsigned int i;

  /* Clear the implicit ref and address nodes from the successor
     lists.  */
  for (i = 0; i < FIRST_REF_NODE; i++)
    {
      if (graph->succs[i])
	FUNC2 (graph->succs[i], FIRST_REF_NODE,
			    FIRST_REF_NODE * 2);
    }

  /* Free the successor list for the non-ref nodes.  */
  for (i = FIRST_REF_NODE; i < graph->size; i++)
    {
      if (graph->succs[i])
	FUNC0 (graph->succs[i]);
    }

  /* Now reallocate the size of the successor list as, and blow away
     the predecessor bitmaps.  */
  graph->size = FUNC1 (varinfo_t, varmap);
  graph->succs = FUNC5 (graph->succs, graph->size * sizeof (bitmap));

  FUNC4 (graph->implicit_preds);
  graph->implicit_preds = NULL;
  FUNC4 (graph->preds);
  graph->preds = NULL;
  FUNC3 (&predbitmap_obstack);
}