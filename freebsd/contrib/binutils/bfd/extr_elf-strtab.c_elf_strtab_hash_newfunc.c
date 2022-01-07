
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct elf_strtab_hash_entry {scalar_t__ len; scalar_t__ refcount; TYPE_1__ u; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 struct bfd_hash_entry* bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

__attribute__((used)) static struct bfd_hash_entry *
elf_strtab_hash_newfunc (struct bfd_hash_entry *entry,
    struct bfd_hash_table *table,
    const char *string)
{


  if (entry == ((void*)0))
    entry = bfd_hash_allocate (table, sizeof (struct elf_strtab_hash_entry));
  if (entry == ((void*)0))
    return ((void*)0);


  entry = bfd_hash_newfunc (entry, table, string);

  if (entry)
    {

      struct elf_strtab_hash_entry *ret;

      ret = (struct elf_strtab_hash_entry *) entry;
      ret->u.index = -1;
      ret->refcount = 0;
      ret->len = 0;
    }

  return entry;
}
