
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* depth_first_search_ds ;
struct TYPE_3__ {int visited_blocks; scalar_t__ sp; int stack; } ;


 int XNEWVEC (int ,int ) ;
 int basic_block ;
 int last_basic_block ;
 int n_basic_blocks ;
 int sbitmap_alloc (int ) ;
 int sbitmap_zero (int ) ;

__attribute__((used)) static void
flow_dfs_compute_reverse_init (depth_first_search_ds data)
{

  data->stack = XNEWVEC (basic_block, n_basic_blocks);
  data->sp = 0;


  data->visited_blocks = sbitmap_alloc (last_basic_block);


  sbitmap_zero (data->visited_blocks);

  return;
}
