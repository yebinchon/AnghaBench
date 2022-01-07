
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int var_map ;
typedef TYPE_1__* tree_live_info_p ;
struct tree_live_info_d {int dummy; } ;
typedef void* bitmap ;
struct TYPE_3__ {int * liveout; void** livein; void* global; int num_blocks; int map; } ;


 void* BITMAP_ALLOC (int *) ;
 int last_basic_block ;
 unsigned int num_var_partitions (int ) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static tree_live_info_p
new_tree_live_info (var_map map)
{
  tree_live_info_p live;
  unsigned x;

  live = (tree_live_info_p) xmalloc (sizeof (struct tree_live_info_d));
  live->map = map;
  live->num_blocks = last_basic_block;

  live->global = BITMAP_ALLOC (((void*)0));

  live->livein = (bitmap *)xmalloc (num_var_partitions (map) * sizeof (bitmap));
  for (x = 0; x < num_var_partitions (map); x++)
    live->livein[x] = BITMAP_ALLOC (((void*)0));


  live->liveout = ((void*)0);
  return live;
}
