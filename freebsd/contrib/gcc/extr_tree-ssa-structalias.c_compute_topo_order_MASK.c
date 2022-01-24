#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct topo_info {int /*<<< orphan*/  visited; } ;
typedef  int /*<<< orphan*/  constraint_graph_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct topo_info*,unsigned int) ; 
 int /*<<< orphan*/  varinfo_t ; 
 int /*<<< orphan*/  varmap ; 

__attribute__((used)) static void
FUNC4 (constraint_graph_t graph,
		    struct topo_info *ti)
{
  unsigned int i;
  unsigned int size = FUNC1 (varinfo_t, varmap);

  for (i = 0; i != size; ++i)
    if (!FUNC0 (ti->visited, i) && FUNC2 (i) == i)
      FUNC3 (graph, ti, i);
}