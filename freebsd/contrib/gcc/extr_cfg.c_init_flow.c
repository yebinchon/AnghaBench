
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct control_flow_graph {int dummy; } ;
struct basic_block_def {int dummy; } ;
struct TYPE_6__ {TYPE_2__* next_bb; int index; } ;
struct TYPE_5__ {TYPE_3__* prev_bb; int index; } ;
struct TYPE_4__ {void* cfg; } ;


 int ENTRY_BLOCK ;
 TYPE_3__* ENTRY_BLOCK_PTR ;
 int EXIT_BLOCK ;
 TYPE_2__* EXIT_BLOCK_PTR ;
 TYPE_1__* cfun ;
 void* ggc_alloc_cleared (int) ;
 scalar_t__ n_edges ;

void
init_flow (void)
{
  if (!cfun->cfg)
    cfun->cfg = ggc_alloc_cleared (sizeof (struct control_flow_graph));
  n_edges = 0;
  ENTRY_BLOCK_PTR = ggc_alloc_cleared (sizeof (struct basic_block_def));
  ENTRY_BLOCK_PTR->index = ENTRY_BLOCK;
  EXIT_BLOCK_PTR = ggc_alloc_cleared (sizeof (struct basic_block_def));
  EXIT_BLOCK_PTR->index = EXIT_BLOCK;
  ENTRY_BLOCK_PTR->next_bb = EXIT_BLOCK_PTR;
  EXIT_BLOCK_PTR->prev_bb = ENTRY_BLOCK_PTR;
}
