
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct htab_bb_copy_original_entry {int index2; int index1; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int index; } ;


 int INSERT ;
 int bb_original ;
 scalar_t__ htab_find_slot (int ,struct htab_bb_copy_original_entry*,int ) ;
 scalar_t__ original_copy_bb_pool ;
 struct htab_bb_copy_original_entry* pool_alloc (scalar_t__) ;

void
set_bb_original (basic_block bb, basic_block original)
{
  if (original_copy_bb_pool)
    {
      struct htab_bb_copy_original_entry **slot;
      struct htab_bb_copy_original_entry key;

      key.index1 = bb->index;
      slot =
 (struct htab_bb_copy_original_entry **) htab_find_slot (bb_original,
              &key, INSERT);
      if (*slot)
 (*slot)->index2 = original->index;
      else
 {
   *slot = pool_alloc (original_copy_bb_pool);
   (*slot)->index1 = bb->index;
   (*slot)->index2 = original->index;
 }
    }
}
