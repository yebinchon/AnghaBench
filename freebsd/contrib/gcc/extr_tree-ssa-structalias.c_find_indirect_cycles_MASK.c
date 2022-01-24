#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scc_info {int /*<<< orphan*/  visited; } ;
typedef  TYPE_1__* constraint_graph_t ;
struct TYPE_4__ {unsigned int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAST_REF_NODE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_info*) ; 
 struct scc_info* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct scc_info*,unsigned int) ; 

__attribute__((used)) static void
FUNC6 (constraint_graph_t graph)
{
  unsigned int i;
  unsigned int size = graph->size;
  struct scc_info *si = FUNC4 (size);

  for (i = 0; i < FUNC0 (LAST_REF_NODE, size); i ++ )
    if (!FUNC1 (si->visited, i) && FUNC2 (i) == i)
      FUNC5 (graph, si, i);

  FUNC3 (si);
}