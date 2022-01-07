
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef scalar_t__ basic_block ;
struct TYPE_4__ {scalar_t__ dest; } ;


 int redirect_edge_and_branch_force (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
loop_redirect_edge (edge e, basic_block dest)
{
  if (e->dest == dest)
    return;

  redirect_edge_and_branch_force (e, dest);
}
