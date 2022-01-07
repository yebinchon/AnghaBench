
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* depth_first_search_ds ;
struct TYPE_3__ {int visited_blocks; int stack; } ;


 int free (int ) ;
 int sbitmap_free (int ) ;

__attribute__((used)) static void
flow_dfs_compute_reverse_finish (depth_first_search_ds data)
{
  free (data->stack);
  sbitmap_free (data->visited_blocks);
}
