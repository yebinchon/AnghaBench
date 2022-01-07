
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htab_bb_copy_original_entry {int index1; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
bb_copy_original_hash (const void *p)
{
  struct htab_bb_copy_original_entry *data
    = ((struct htab_bb_copy_original_entry *)p);

  return data->index1;
}
