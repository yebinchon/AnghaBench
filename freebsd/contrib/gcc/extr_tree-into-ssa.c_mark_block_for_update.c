
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int index; } ;


 scalar_t__ bitmap_bit_p (int *,int ) ;
 int bitmap_set_bit (int *,int ) ;
 int * blocks_to_update ;
 int gcc_assert (int ) ;
 int initialize_flags_in_bb (TYPE_1__*) ;

__attribute__((used)) static void
mark_block_for_update (basic_block bb)
{
  gcc_assert (blocks_to_update != ((void*)0));
  if (bitmap_bit_p (blocks_to_update, bb->index))
    return;
  bitmap_set_bit (blocks_to_update, bb->index);
  initialize_flags_in_bb (bb);
}
