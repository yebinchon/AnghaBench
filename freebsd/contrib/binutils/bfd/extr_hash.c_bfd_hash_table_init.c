
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_hash_table {int dummy; } ;
typedef int bfd_boolean ;


 int bfd_default_hash_table_size ;
 int bfd_hash_table_init_n (struct bfd_hash_table*,struct bfd_hash_entry* (*) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*),unsigned int,int ) ;

bfd_boolean
bfd_hash_table_init (struct bfd_hash_table *table,
       struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
       struct bfd_hash_table *,
       const char *),
       unsigned int entsize)
{
  return bfd_hash_table_init_n (table, newfunc, entsize,
    bfd_default_hash_table_size);
}
