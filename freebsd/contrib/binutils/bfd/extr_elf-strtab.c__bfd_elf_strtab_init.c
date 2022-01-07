
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_strtab_hasn_entry {int dummy; } ;
struct elf_strtab_hash_entry {int dummy; } ;
struct elf_strtab_hash {int size; int alloced; int ** array; scalar_t__ sec_size; int table; } ;
typedef int bfd_size_type ;


 int bfd_hash_table_init (int *,int ,int) ;
 void* bfd_malloc (int) ;
 int elf_strtab_hash_newfunc ;
 int free (struct elf_strtab_hash*) ;

struct elf_strtab_hash *
_bfd_elf_strtab_init (void)
{
  struct elf_strtab_hash *table;
  bfd_size_type amt = sizeof (struct elf_strtab_hash);

  table = bfd_malloc (amt);
  if (table == ((void*)0))
    return ((void*)0);

  if (!bfd_hash_table_init (&table->table, elf_strtab_hash_newfunc,
       sizeof (struct elf_strtab_hash_entry)))
    {
      free (table);
      return ((void*)0);
    }

  table->sec_size = 0;
  table->size = 1;
  table->alloced = 64;
  amt = sizeof (struct elf_strtab_hasn_entry *);
  table->array = bfd_malloc (table->alloced * amt);
  if (table->array == ((void*)0))
    {
      free (table);
      return ((void*)0);
    }

  table->array[0] = ((void*)0);

  return table;
}
