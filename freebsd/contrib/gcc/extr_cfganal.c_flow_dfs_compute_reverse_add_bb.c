
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* depth_first_search_ds ;
typedef TYPE_2__* basic_block ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int visited_blocks; int sp; TYPE_2__** stack; } ;


 int SET_BIT (int ,int ) ;

__attribute__((used)) static void
flow_dfs_compute_reverse_add_bb (depth_first_search_ds data, basic_block bb)
{
  data->stack[data->sp++] = bb;
  SET_BIT (data->visited_blocks, bb->index);
}
