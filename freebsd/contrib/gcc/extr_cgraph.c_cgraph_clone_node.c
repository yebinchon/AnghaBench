
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_node {int count; struct cgraph_node* prev_clone; struct cgraph_node* next_clone; struct cgraph_edge* callees; int master_clone; int rtl; int global; int local; int analyzed; TYPE_1__* origin; struct cgraph_node* next_nested; int decl; } ;
struct cgraph_edge {int call_stmt; struct cgraph_edge* next_callee; } ;
typedef int gcov_type ;
struct TYPE_2__ {struct cgraph_node* nested; } ;


 int REG_BR_PROB_BASE ;
 int cgraph_clone_edge (struct cgraph_edge*,struct cgraph_node*,int ,int,int,int) ;
 struct cgraph_node* cgraph_create_node () ;

struct cgraph_node *
cgraph_clone_node (struct cgraph_node *n, gcov_type count, int loop_nest,
     bool update_original)
{
  struct cgraph_node *new = cgraph_create_node ();
  struct cgraph_edge *e;
  gcov_type count_scale;

  new->decl = n->decl;
  new->origin = n->origin;
  if (new->origin)
    {
      new->next_nested = new->origin->nested;
      new->origin->nested = new;
    }
  new->analyzed = n->analyzed;
  new->local = n->local;
  new->global = n->global;
  new->rtl = n->rtl;
  new->master_clone = n->master_clone;
  new->count = count;
  if (n->count)
    count_scale = new->count * REG_BR_PROB_BASE / n->count;
  else
    count_scale = 0;
  if (update_original)
    {
      n->count -= count;
      if (n->count < 0)
 n->count = 0;
    }

  for (e = n->callees;e; e=e->next_callee)
    cgraph_clone_edge (e, new, e->call_stmt, count_scale, loop_nest,
         update_original);

  new->next_clone = n->next_clone;
  new->prev_clone = n;
  n->next_clone = new;
  if (new->next_clone)
    new->next_clone->prev_clone = new;

  return new;
}
