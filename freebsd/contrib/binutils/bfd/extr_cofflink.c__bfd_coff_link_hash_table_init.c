
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_link_hash_table {int root; int stab_info; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int _bfd_link_hash_table_init (int *,int *,struct bfd_hash_entry* (*) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*),unsigned int) ;
 int memset (int *,int ,int) ;

bfd_boolean
_bfd_coff_link_hash_table_init (struct coff_link_hash_table *table,
    bfd *abfd,
    struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
           struct bfd_hash_table *,
           const char *),
    unsigned int entsize)
{
  memset (&table->stab_info, 0, sizeof (table->stab_info));
  return _bfd_link_hash_table_init (&table->root, abfd, newfunc, entsize);
}
