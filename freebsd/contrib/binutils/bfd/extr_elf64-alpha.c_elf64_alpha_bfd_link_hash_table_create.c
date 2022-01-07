
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct TYPE_2__ {struct bfd_link_hash_table root; } ;
struct alpha_elf_link_hash_table {TYPE_1__ root; } ;
struct alpha_elf_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_elf_link_hash_table_init (TYPE_1__*,int *,int ,int) ;
 scalar_t__ bfd_zmalloc (int) ;
 int elf64_alpha_link_hash_newfunc ;
 int free (struct alpha_elf_link_hash_table*) ;

__attribute__((used)) static struct bfd_link_hash_table *
elf64_alpha_bfd_link_hash_table_create (bfd *abfd)
{
  struct alpha_elf_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct alpha_elf_link_hash_table);

  ret = (struct alpha_elf_link_hash_table *) bfd_zmalloc (amt);
  if (ret == (struct alpha_elf_link_hash_table *) ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (&ret->root, abfd,
          elf64_alpha_link_hash_newfunc,
          sizeof (struct alpha_elf_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  return &ret->root.root;
}
