
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dataflow {TYPE_1__* df; } ;
typedef TYPE_4__* edge ;
typedef int bitmap ;
struct TYPE_11__ {int in; int out; } ;
struct TYPE_10__ {int flags; TYPE_3__* dest; TYPE_2__* src; } ;
struct TYPE_9__ {int index; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {int hardware_regs_used; } ;


 int EDGE_EH ;
 int bitmap_ior_and_compl_into (int ,int ,int ) ;
 int bitmap_ior_into (int ,int ) ;
 int df_invalidated_by_call ;
 TYPE_5__* df_lr_get_bb_info (struct dataflow*,int ) ;

__attribute__((used)) static void
df_lr_confluence_n (struct dataflow *dflow, edge e)
{
  bitmap op1 = df_lr_get_bb_info (dflow, e->src->index)->out;
  bitmap op2 = df_lr_get_bb_info (dflow, e->dest->index)->in;




  if (e->flags & EDGE_EH)
    bitmap_ior_and_compl_into (op1, op2, df_invalidated_by_call);
  else
    bitmap_ior_into (op1, op2);

  bitmap_ior_into (op1, dflow->df->hardware_regs_used);
}
