
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_node {int dummy; } ;
struct cgraph_edge {int count; int inline_failed; scalar_t__ loop_nest; int callee; } ;
typedef int gcov_type ;


 int REG_BR_PROB_BASE ;
 struct cgraph_edge* cgraph_create_edge (struct cgraph_node*,int ,int ,int,scalar_t__) ;

struct cgraph_edge *
cgraph_clone_edge (struct cgraph_edge *e, struct cgraph_node *n,
     tree call_stmt, gcov_type count_scale, int loop_nest,
     bool update_original)
{
  struct cgraph_edge *new;

  new = cgraph_create_edge (n, e->callee, call_stmt,
       e->count * count_scale / REG_BR_PROB_BASE,
       e->loop_nest + loop_nest);

  new->inline_failed = e->inline_failed;
  if (update_original)
    {
      e->count -= new->count;
      if (e->count < 0)
 e->count = 0;
    }
  return new;
}
