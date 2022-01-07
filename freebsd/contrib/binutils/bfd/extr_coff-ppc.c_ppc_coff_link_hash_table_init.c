
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_coff_link_hash_table {int root; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int _bfd_coff_link_hash_table_init (int *,int *,struct bfd_hash_entry* (*) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*),unsigned int) ;

__attribute__((used)) static bfd_boolean
ppc_coff_link_hash_table_init (struct ppc_coff_link_hash_table *table,
          bfd *abfd,
          struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
          struct bfd_hash_table *,
          const char *),
          unsigned int entsize)
{
  return _bfd_coff_link_hash_table_init (&table->root, abfd, newfunc, entsize);
}
