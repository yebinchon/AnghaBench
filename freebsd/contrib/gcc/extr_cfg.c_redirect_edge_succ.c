
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_7__ {int dest; } ;


 int connect_dest (TYPE_1__*) ;
 int disconnect_dest (TYPE_1__*) ;
 int execute_on_growing_pred (TYPE_1__*) ;
 int execute_on_shrinking_pred (TYPE_1__*) ;

void
redirect_edge_succ (edge e, basic_block new_succ)
{
  execute_on_shrinking_pred (e);

  disconnect_dest (e);

  e->dest = new_succ;


  connect_dest (e);

  execute_on_growing_pred (e);
}
