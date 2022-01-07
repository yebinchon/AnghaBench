
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_5__ {size_t index; } ;


 TYPE_1__* ENTRY_BLOCK_PTR ;
 TYPE_1__* EXIT_BLOCK_PTR ;
 int bitmap_set_bit (int ,int) ;
 int * control_dependence_map ;
 int gcc_assert (int) ;

__attribute__((used)) static inline void
set_control_dependence_map_bit (basic_block bb, int edge_index)
{
  if (bb == ENTRY_BLOCK_PTR)
    return;
  gcc_assert (bb != EXIT_BLOCK_PTR);
  bitmap_set_bit (control_dependence_map[bb->index], edge_index);
}
