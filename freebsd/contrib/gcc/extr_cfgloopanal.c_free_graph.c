
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph {int n_vertices; struct graph* vertices; struct graph* succ_next; struct graph* succ; } ;
struct edge {int n_vertices; struct edge* vertices; struct edge* succ_next; struct edge* succ; } ;


 int free (struct graph*) ;

__attribute__((used)) static void
free_graph (struct graph *g)
{
  struct edge *e, *n;
  int i;

  for (i = 0; i < g->n_vertices; i++)
    for (e = g->vertices[i].succ; e; e = n)
      {
 n = e->succ_next;
 free (e);
      }
  free (g->vertices);
  free (g);
}
