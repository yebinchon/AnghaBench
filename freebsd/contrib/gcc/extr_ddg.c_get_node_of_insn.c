
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* ddg_ptr ;
typedef TYPE_2__* ddg_node_ptr ;
struct TYPE_6__ {scalar_t__ insn; } ;
struct TYPE_5__ {int num_nodes; TYPE_2__* nodes; } ;



ddg_node_ptr
get_node_of_insn (ddg_ptr g, rtx insn)
{
  int i;

  for (i = 0; i < g->num_nodes; i++)
    if (insn == g->nodes[i].insn)
      return &g->nodes[i];
  return ((void*)0);
}
