
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sbitmap ;
struct TYPE_2__ {int (* flow_call_edges_add ) (int ) ;int name; } ;


 TYPE_1__* cfg_hooks ;
 int internal_error (char*,int ) ;
 int stub1 (int ) ;

int
flow_call_edges_add (sbitmap blocks)
{
  if (!cfg_hooks->flow_call_edges_add)
    internal_error ("%s does not support flow_call_edges_add",
      cfg_hooks->name);

  return (cfg_hooks->flow_call_edges_add) (blocks);
}
