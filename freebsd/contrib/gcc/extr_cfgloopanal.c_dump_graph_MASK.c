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
struct graph {int n_vertices; TYPE_1__* vertices; } ;
struct edge {int src; int dest; struct edge* succ_next; struct edge* pred_next; } ;
struct TYPE_2__ {int component; struct edge* succ; struct edge* pred; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC1 (FILE *f, struct graph *g)
{
  int i;
  struct edge *e;

  for (i = 0; i < g->n_vertices; i++)
    {
      if (!g->vertices[i].pred
	  && !g->vertices[i].succ)
	continue;

      FUNC0 (f, "%d (%d)\t<-", i, g->vertices[i].component);
      for (e = g->vertices[i].pred; e; e = e->pred_next)
	FUNC0 (f, " %d", e->src);
      FUNC0 (f, "\n");

      FUNC0 (f, "\t->");
      for (e = g->vertices[i].succ; e; e = e->succ_next)
	FUNC0 (f, " %d", e->dest);
      FUNC0 (f, "\n");
    }
}