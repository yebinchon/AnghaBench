
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_10__ {int (* delete_basic_block ) (TYPE_1__*) ;int name; } ;
struct TYPE_9__ {int succs; int preds; } ;


 size_t CDI_DOMINATORS ;
 size_t CDI_POST_DOMINATORS ;
 scalar_t__ EDGE_COUNT (int ) ;
 int EDGE_PRED (TYPE_1__*,int ) ;
 int EDGE_SUCC (TYPE_1__*,int ) ;
 TYPE_6__* cfg_hooks ;
 int delete_from_dominance_info (size_t,TYPE_1__*) ;
 scalar_t__* dom_computed ;
 int expunge_block (TYPE_1__*) ;
 int internal_error (char*,int ) ;
 int remove_edge (int ) ;
 int stub1 (TYPE_1__*) ;

void
delete_basic_block (basic_block bb)
{
  if (!cfg_hooks->delete_basic_block)
    internal_error ("%s does not support delete_basic_block", cfg_hooks->name);

  cfg_hooks->delete_basic_block (bb);



  while (EDGE_COUNT (bb->preds) != 0)
    remove_edge (EDGE_PRED (bb, 0));
  while (EDGE_COUNT (bb->succs) != 0)
    remove_edge (EDGE_SUCC (bb, 0));

  if (dom_computed[CDI_DOMINATORS])
    delete_from_dominance_info (CDI_DOMINATORS, bb);
  if (dom_computed[CDI_POST_DOMINATORS])
    delete_from_dominance_info (CDI_POST_DOMINATORS, bb);


  expunge_block (bb);
}
