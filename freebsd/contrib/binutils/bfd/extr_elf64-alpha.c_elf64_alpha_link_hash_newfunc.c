
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
struct TYPE_2__ {int ifd; } ;
struct alpha_elf_link_hash_entry {int * reloc_entries; int * got_entries; scalar_t__ flags; TYPE_1__ esym; } ;
typedef int EXTR ;


 scalar_t__ _bfd_elf_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static struct bfd_hash_entry *
elf64_alpha_link_hash_newfunc (struct bfd_hash_entry *entry,
          struct bfd_hash_table *table,
          const char *string)
{
  struct alpha_elf_link_hash_entry *ret =
    (struct alpha_elf_link_hash_entry *) entry;



  if (ret == (struct alpha_elf_link_hash_entry *) ((void*)0))
    ret = ((struct alpha_elf_link_hash_entry *)
    bfd_hash_allocate (table,
         sizeof (struct alpha_elf_link_hash_entry)));
  if (ret == (struct alpha_elf_link_hash_entry *) ((void*)0))
    return (struct bfd_hash_entry *) ret;


  ret = ((struct alpha_elf_link_hash_entry *)
  _bfd_elf_link_hash_newfunc ((struct bfd_hash_entry *) ret,
         table, string));
  if (ret != (struct alpha_elf_link_hash_entry *) ((void*)0))
    {

      memset (&ret->esym, 0, sizeof (EXTR));


      ret->esym.ifd = -2;
      ret->flags = 0;
      ret->got_entries = ((void*)0);
      ret->reloc_entries = ((void*)0);
    }

  return (struct bfd_hash_entry *) ret;
}
