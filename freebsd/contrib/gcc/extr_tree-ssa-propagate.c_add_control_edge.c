
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* edge ;
typedef TYPE_3__* basic_block ;
struct TYPE_9__ {int index; } ;
struct TYPE_8__ {int flags; TYPE_3__* dest; TYPE_1__* src; } ;
struct TYPE_7__ {int index; } ;


 int EDGE_EXECUTABLE ;
 TYPE_3__* EXIT_BLOCK_PTR ;
 int TDF_DETAILS ;
 scalar_t__ TEST_BIT (int ,int) ;
 int bb_in_list ;
 int cfg_blocks_add (TYPE_3__*) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,int,int) ;

__attribute__((used)) static void
add_control_edge (edge e)
{
  basic_block bb = e->dest;
  if (bb == EXIT_BLOCK_PTR)
    return;


  if (e->flags & EDGE_EXECUTABLE)
    return;

  e->flags |= EDGE_EXECUTABLE;


  if (TEST_BIT (bb_in_list, bb->index))
    return;

  cfg_blocks_add (bb);

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "Adding Destination of edge (%d -> %d) to worklist\n\n",
 e->src->index, e->dest->index);
}
