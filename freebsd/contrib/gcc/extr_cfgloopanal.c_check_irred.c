
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct graph {TYPE_1__* vertices; } ;
struct edge {size_t src; size_t dest; TYPE_3__* data; } ;
typedef TYPE_3__* edge ;
struct TYPE_6__ {TYPE_2__* src; int dest; int flags; } ;
struct TYPE_5__ {int flags; int loop_father; } ;
struct TYPE_4__ {scalar_t__ component; } ;


 int BB_IRREDUCIBLE_LOOP ;
 int EDGE_IRREDUCIBLE_LOOP ;
 scalar_t__ flow_bb_inside_loop_p (int ,int ) ;
 int gcc_assert (int) ;

__attribute__((used)) static void
check_irred (struct graph *g, struct edge *e)
{
  edge real = e->data;



  gcc_assert (g->vertices[e->src].component >= g->vertices[e->dest].component);

  if (g->vertices[e->src].component != g->vertices[e->dest].component)
    return;

  real->flags |= EDGE_IRREDUCIBLE_LOOP;
  if (flow_bb_inside_loop_p (real->src->loop_father, real->dest))
    real->src->flags |= BB_IRREDUCIBLE_LOOP;
}
