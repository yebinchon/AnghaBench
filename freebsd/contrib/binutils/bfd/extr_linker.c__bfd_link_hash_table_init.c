
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_link_hash_table {int table; int type; int * undefs_tail; int * undefs; int creator; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {int xvec; } ;
typedef TYPE_1__ bfd ;


 int bfd_hash_table_init (int *,struct bfd_hash_entry* (*) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*),unsigned int) ;
 int bfd_link_generic_hash_table ;

bfd_boolean
_bfd_link_hash_table_init
  (struct bfd_link_hash_table *table,
   bfd *abfd,
   struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
          struct bfd_hash_table *,
          const char *),
   unsigned int entsize)
{
  table->creator = abfd->xvec;
  table->undefs = ((void*)0);
  table->undefs_tail = ((void*)0);
  table->type = bfd_link_generic_hash_table;

  return bfd_hash_table_init (&table->table, newfunc, entsize);
}
