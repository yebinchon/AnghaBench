#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct edge_list {int num_blocks; int num_edges; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int index; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_2__* ENTRY_BLOCK_PTR ; 
 TYPE_1__* EXIT_BLOCK_PTR ; 
 TYPE_2__* FUNC0 (struct edge_list*,int) ; 
 TYPE_1__* FUNC1 (struct edge_list*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC3 (FILE *f, struct edge_list *elist)
{
  int x;

  FUNC2 (f, "Compressed edge list, %d BBs + entry & exit, and %d edges\n",
	   elist->num_blocks, elist->num_edges);

  for (x = 0; x < elist->num_edges; x++)
    {
      FUNC2 (f, " %-4d - edge(", x);
      if (FUNC0 (elist, x) == ENTRY_BLOCK_PTR)
	FUNC2 (f, "entry,");
      else
	FUNC2 (f, "%d,", FUNC0 (elist, x)->index);

      if (FUNC1 (elist, x) == EXIT_BLOCK_PTR)
	FUNC2 (f, "exit)\n");
      else
	FUNC2 (f, "%d)\n", FUNC1 (elist, x)->index);
    }
}