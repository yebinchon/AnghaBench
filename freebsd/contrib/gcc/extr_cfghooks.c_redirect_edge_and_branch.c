
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int edge ;
typedef int basic_block ;
struct TYPE_2__ {int (* redirect_edge_and_branch ) (int ,int ) ;int name; } ;


 TYPE_1__* cfg_hooks ;
 int internal_error (char*,int ) ;
 int stub1 (int ,int ) ;

edge
redirect_edge_and_branch (edge e, basic_block dest)
{
  edge ret;

  if (!cfg_hooks->redirect_edge_and_branch)
    internal_error ("%s does not support redirect_edge_and_branch",
      cfg_hooks->name);

  ret = cfg_hooks->redirect_edge_and_branch (e, dest);

  return ret;
}
