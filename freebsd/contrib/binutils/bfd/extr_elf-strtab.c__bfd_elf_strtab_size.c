
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_strtab_hash {scalar_t__ size; scalar_t__ sec_size; } ;
typedef scalar_t__ bfd_size_type ;



bfd_size_type
_bfd_elf_strtab_size (struct elf_strtab_hash *tab)
{
  return tab->sec_size ? tab->sec_size : tab->size;
}
