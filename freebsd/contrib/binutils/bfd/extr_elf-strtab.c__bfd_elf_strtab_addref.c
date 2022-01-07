
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_strtab_hash {scalar_t__ sec_size; size_t size; TYPE_1__** array; } ;
typedef size_t bfd_size_type ;
struct TYPE_2__ {int refcount; } ;


 int BFD_ASSERT (int) ;

void
_bfd_elf_strtab_addref (struct elf_strtab_hash *tab, bfd_size_type idx)
{
  if (idx == 0 || idx == (bfd_size_type) -1)
    return;
  BFD_ASSERT (tab->sec_size == 0);
  BFD_ASSERT (idx < tab->size);
  ++tab->array[idx]->refcount;
}
