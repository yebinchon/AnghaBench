
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph {TYPE_1__* vertices; } ;
struct edge {int src; int dest; struct edge* succ_next; struct edge* pred_next; void* data; } ;
struct TYPE_2__ {struct edge* succ; struct edge* pred; } ;


 struct edge* xmalloc (int) ;

__attribute__((used)) static void
add_edge (struct graph *g, int f, int t, void *data)
{
  struct edge *e = xmalloc (sizeof (struct edge));

  e->src = f;
  e->dest = t;
  e->data = data;

  e->pred_next = g->vertices[t].pred;
  g->vertices[t].pred = e;

  e->succ_next = g->vertices[f].succ;
  g->vertices[f].succ = e;
}
