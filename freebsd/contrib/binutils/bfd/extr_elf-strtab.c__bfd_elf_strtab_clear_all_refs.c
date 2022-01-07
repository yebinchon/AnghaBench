
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_strtab_hash {size_t size; TYPE_1__** array; } ;
typedef size_t bfd_size_type ;
struct TYPE_2__ {scalar_t__ refcount; } ;



void
_bfd_elf_strtab_clear_all_refs (struct elf_strtab_hash *tab)
{
  bfd_size_type idx;

  for (idx = 1; idx < tab->size; ++idx)
    tab->array[idx]->refcount = 0;
}
