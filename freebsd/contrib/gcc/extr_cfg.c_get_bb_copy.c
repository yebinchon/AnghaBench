
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct htab_bb_copy_original_entry {int index2; int index1; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int index; } ;


 TYPE_1__* BASIC_BLOCK (int ) ;
 int bb_copy ;
 int gcc_assert (int ) ;
 scalar_t__ htab_find (int ,struct htab_bb_copy_original_entry*) ;
 int original_copy_bb_pool ;

basic_block
get_bb_copy (basic_block bb)
{
  struct htab_bb_copy_original_entry *entry;
  struct htab_bb_copy_original_entry key;

  gcc_assert (original_copy_bb_pool);

  key.index1 = bb->index;
  entry = (struct htab_bb_copy_original_entry *) htab_find (bb_copy, &key);
  if (entry)
    return BASIC_BLOCK (entry->index2);
  else
    return ((void*)0);
}
