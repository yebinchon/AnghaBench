
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int edge ;
typedef int basic_block ;
struct TYPE_2__ {int (* redirect_edge_and_branch_force ) (int ,int ) ;int name; } ;


 TYPE_1__* cfg_hooks ;
 int internal_error (char*,int ) ;
 int stub1 (int ,int ) ;

basic_block
redirect_edge_and_branch_force (edge e, basic_block dest)
{
  basic_block ret;

  if (!cfg_hooks->redirect_edge_and_branch_force)
    internal_error ("%s does not support redirect_edge_and_branch_force",
      cfg_hooks->name);

  ret = cfg_hooks->redirect_edge_and_branch_force (e, dest);

  return ret;
}
