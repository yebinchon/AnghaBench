
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dataflow {int dummy; } ;
typedef TYPE_3__* edge ;
typedef int bitmap ;
struct TYPE_9__ {int out; int in; } ;
struct TYPE_8__ {int flags; TYPE_2__* src; TYPE_1__* dest; } ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int index; } ;


 int EDGE_FAKE ;
 int bitmap_ior_into (int ,int ) ;
 TYPE_4__* df_ur_get_bb_info (struct dataflow*,int ) ;

__attribute__((used)) static void
df_ur_confluence_n (struct dataflow *dflow, edge e)
{
  bitmap op1 = df_ur_get_bb_info (dflow, e->dest->index)->in;
  bitmap op2 = df_ur_get_bb_info (dflow, e->src->index)->out;

  if (e->flags & EDGE_FAKE)
    return;

  bitmap_ior_into (op1, op2);
}
