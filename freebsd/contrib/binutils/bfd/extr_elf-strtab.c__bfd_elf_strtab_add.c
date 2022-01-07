
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t index; } ;
struct elf_strtab_hash_entry {scalar_t__ len; TYPE_1__ u; int refcount; } ;
struct elf_strtab_hash {scalar_t__ sec_size; int size; int alloced; struct elf_strtab_hash_entry** array; int table; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;


 int BFD_ASSERT (int) ;
 int TRUE ;
 scalar_t__ bfd_hash_lookup (int *,char const*,int ,int ) ;
 struct elf_strtab_hash_entry** bfd_realloc (struct elf_strtab_hash_entry**,int) ;
 scalar_t__ strlen (char const*) ;

bfd_size_type
_bfd_elf_strtab_add (struct elf_strtab_hash *tab,
       const char *str,
       bfd_boolean copy)
{
  register struct elf_strtab_hash_entry *entry;



  if (*str == '\0')
    return 0;

  BFD_ASSERT (tab->sec_size == 0);
  entry = (struct elf_strtab_hash_entry *)
   bfd_hash_lookup (&tab->table, str, TRUE, copy);

  if (entry == ((void*)0))
    return (bfd_size_type) -1;

  entry->refcount++;
  if (entry->len == 0)
    {
      entry->len = strlen (str) + 1;

      BFD_ASSERT (entry->len > 0);
      if (tab->size == tab->alloced)
 {
   bfd_size_type amt = sizeof (struct elf_strtab_hash_entry *);
   tab->alloced *= 2;
   tab->array = bfd_realloc (tab->array, tab->alloced * amt);
   if (tab->array == ((void*)0))
     return (bfd_size_type) -1;
 }

      entry->u.index = tab->size++;
      tab->array[entry->u.index] = entry;
    }
  return entry->u.index;
}
