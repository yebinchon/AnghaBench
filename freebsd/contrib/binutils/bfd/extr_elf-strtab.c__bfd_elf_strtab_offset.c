
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t index; } ;
struct elf_strtab_hash_entry {scalar_t__ refcount; TYPE_1__ u; } ;
struct elf_strtab_hash {size_t size; int sec_size; struct elf_strtab_hash_entry** array; } ;
typedef size_t bfd_size_type ;


 int BFD_ASSERT (int) ;

bfd_size_type
_bfd_elf_strtab_offset (struct elf_strtab_hash *tab, bfd_size_type idx)
{
  struct elf_strtab_hash_entry *entry;

  if (idx == 0)
    return 0;
  BFD_ASSERT (idx < tab->size);
  BFD_ASSERT (tab->sec_size);
  entry = tab->array[idx];
  BFD_ASSERT (entry->refcount > 0);
  entry->refcount--;
  return tab->array[idx]->u.index;
}
