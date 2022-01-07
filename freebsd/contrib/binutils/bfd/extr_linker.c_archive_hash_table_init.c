
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_hash_table {int table; } ;
typedef int bfd_boolean ;


 int bfd_hash_table_init (int *,struct bfd_hash_entry* (*) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*),unsigned int) ;

__attribute__((used)) static bfd_boolean
archive_hash_table_init
  (struct archive_hash_table *table,
   struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
          struct bfd_hash_table *,
          const char *),
   unsigned int entsize)
{
  return bfd_hash_table_init (&table->table, newfunc, entsize);
}
