
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct TYPE_2__ {struct bfd_link_hash_table root; } ;
struct score_elf_link_hash_table {TYPE_1__ root; } ;
struct score_elf_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_elf_link_hash_table_init (TYPE_1__*,int *,int ,int) ;
 struct score_elf_link_hash_table* bfd_malloc (int) ;
 int free (struct score_elf_link_hash_table*) ;
 int score_elf_link_hash_newfunc ;

__attribute__((used)) static struct bfd_link_hash_table *
elf32_score_link_hash_table_create (bfd *abfd)
{
  struct score_elf_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct score_elf_link_hash_table);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (&ret->root, abfd, score_elf_link_hash_newfunc,
          sizeof (struct score_elf_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  return &ret->root.root;
}
