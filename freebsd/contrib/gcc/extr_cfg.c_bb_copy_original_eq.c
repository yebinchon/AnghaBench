
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htab_bb_copy_original_entry {scalar_t__ index1; } ;



__attribute__((used)) static int
bb_copy_original_eq (const void *p, const void *q)
{
  struct htab_bb_copy_original_entry *data
    = ((struct htab_bb_copy_original_entry *)p);
  struct htab_bb_copy_original_entry *data2
    = ((struct htab_bb_copy_original_entry *)q);

  return data->index1 == data2->index1;
}
