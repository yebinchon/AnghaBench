
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_strtab_hash {int table; } ;


 int bfd_hash_table_free (int *) ;
 int free (struct bfd_strtab_hash*) ;

void
_bfd_stringtab_free (struct bfd_strtab_hash *table)
{
  bfd_hash_table_free (&table->table);
  free (table);
}
