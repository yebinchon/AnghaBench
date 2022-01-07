
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_hash_table {int dummy; } ;
struct elf_link_hash_table {struct bfd_link_hash_table root; } ;
struct elf_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_elf_link_hash_newfunc ;
 int _bfd_elf_link_hash_table_init (struct elf_link_hash_table*,int *,int ,int) ;
 struct elf_link_hash_table* bfd_malloc (int) ;
 int free (struct elf_link_hash_table*) ;

struct bfd_link_hash_table *
_bfd_elf_link_hash_table_create (bfd *abfd)
{
  struct elf_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct elf_link_hash_table);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);

  if (! _bfd_elf_link_hash_table_init (ret, abfd, _bfd_elf_link_hash_newfunc,
           sizeof (struct elf_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  return &ret->root;
}
