
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* edge ;
struct TYPE_4__ {int dest; } ;


 scalar_t__ phi_nodes (int ) ;
 int remove_phi_args (TYPE_1__*) ;

__attribute__((used)) static void
tree_execute_on_shrinking_pred (edge e)
{
  if (phi_nodes (e->dest))
    remove_phi_args (e);
}
