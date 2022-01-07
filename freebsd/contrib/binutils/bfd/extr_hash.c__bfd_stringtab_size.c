
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_strtab_hash {int size; } ;
typedef int bfd_size_type ;



bfd_size_type
_bfd_stringtab_size (struct bfd_strtab_hash *tab)
{
  return tab->size;
}
