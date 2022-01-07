
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* tree_live_info_p ;
typedef int tree ;
typedef int bitmap ;
typedef TYPE_2__* basic_block ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int global; int * livein; int map; } ;


 TYPE_2__* ENTRY_BLOCK_PTR ;
 int NO_PARTITION ;
 int bitmap_bit_p (int ,int) ;
 int bitmap_set_bit (int ,int) ;
 int var_to_partition (int ,int ) ;

__attribute__((used)) static inline void
add_livein_if_notdef (tree_live_info_p live, bitmap def_vec,
        tree var, basic_block bb)
{
  int p = var_to_partition (live->map, var);
  if (p == NO_PARTITION || bb == ENTRY_BLOCK_PTR)
    return;
  if (!bitmap_bit_p (def_vec, p))
    {
      bitmap_set_bit (live->livein[p], bb->index);
      bitmap_set_bit (live->global, p);
    }
}
