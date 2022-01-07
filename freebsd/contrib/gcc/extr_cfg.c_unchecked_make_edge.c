
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef void* basic_block ;
struct TYPE_7__ {int flags; void* dest; void* src; } ;


 int connect_dest (TYPE_1__*) ;
 int connect_src (TYPE_1__*) ;
 int execute_on_growing_pred (TYPE_1__*) ;
 TYPE_1__* ggc_alloc_cleared (int) ;
 int n_edges ;

edge
unchecked_make_edge (basic_block src, basic_block dst, int flags)
{
  edge e;
  e = ggc_alloc_cleared (sizeof (*e));
  n_edges++;

  e->src = src;
  e->dest = dst;
  e->flags = flags;

  connect_src (e);
  connect_dest (e);

  execute_on_growing_pred (e);

  return e;
}
