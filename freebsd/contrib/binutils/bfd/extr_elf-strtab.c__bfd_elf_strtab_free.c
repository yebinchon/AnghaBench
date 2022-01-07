
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_strtab_hash {struct elf_strtab_hash* array; int table; } ;


 int bfd_hash_table_free (int *) ;
 int free (struct elf_strtab_hash*) ;

void
_bfd_elf_strtab_free (struct elf_strtab_hash *tab)
{
  bfd_hash_table_free (&tab->table);
  free (tab->array);
  free (tab);
}
