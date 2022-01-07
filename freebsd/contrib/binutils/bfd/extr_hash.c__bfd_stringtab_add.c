
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* string; } ;
struct strtab_hash_entry {scalar_t__ index; struct strtab_hash_entry* next; TYPE_1__ root; } ;
struct bfd_strtab_hash {scalar_t__ size; struct strtab_hash_entry* last; struct strtab_hash_entry* first; scalar_t__ xcoff; int table; } ;
typedef scalar_t__ bfd_size_type ;
typedef scalar_t__ bfd_boolean ;


 int TRUE ;
 void* bfd_hash_allocate (int *,int) ;
 int strlen (char const*) ;
 struct strtab_hash_entry* strtab_hash_lookup (struct bfd_strtab_hash*,char const*,int ,scalar_t__) ;

bfd_size_type
_bfd_stringtab_add (struct bfd_strtab_hash *tab,
      const char *str,
      bfd_boolean hash,
      bfd_boolean copy)
{
  struct strtab_hash_entry *entry;

  if (hash)
    {
      entry = strtab_hash_lookup (tab, str, TRUE, copy);
      if (entry == ((void*)0))
 return (bfd_size_type) -1;
    }
  else
    {
      entry = bfd_hash_allocate (&tab->table, sizeof (* entry));
      if (entry == ((void*)0))
 return (bfd_size_type) -1;
      if (! copy)
 entry->root.string = str;
      else
 {
   char *n;

   n = bfd_hash_allocate (&tab->table, strlen (str) + 1);
   if (n == ((void*)0))
     return (bfd_size_type) -1;
   entry->root.string = n;
 }
      entry->index = (bfd_size_type) -1;
      entry->next = ((void*)0);
    }

  if (entry->index == (bfd_size_type) -1)
    {
      entry->index = tab->size;
      tab->size += strlen (str) + 1;
      if (tab->xcoff)
 {
   entry->index += 2;
   tab->size += 2;
 }
      if (tab->first == ((void*)0))
 tab->first = entry;
      else
 tab->last->next = entry;
      tab->last = entry;
    }

  return entry->index;
}
