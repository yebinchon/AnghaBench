
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strtab_hash_entry {int dummy; } ;
struct bfd_strtab_hash {int xcoff; int * last; int * first; scalar_t__ size; int table; } ;
typedef int bfd_size_type ;


 int FALSE ;
 int bfd_hash_table_init (int *,int ,int) ;
 struct bfd_strtab_hash* bfd_malloc (int) ;
 int free (struct bfd_strtab_hash*) ;
 int strtab_hash_newfunc ;

struct bfd_strtab_hash *
_bfd_stringtab_init (void)
{
  struct bfd_strtab_hash *table;
  bfd_size_type amt = sizeof (* table);

  table = bfd_malloc (amt);
  if (table == ((void*)0))
    return ((void*)0);

  if (!bfd_hash_table_init (&table->table, strtab_hash_newfunc,
       sizeof (struct strtab_hash_entry)))
    {
      free (table);
      return ((void*)0);
    }

  table->size = 0;
  table->first = ((void*)0);
  table->last = ((void*)0);
  table->xcoff = FALSE;

  return table;
}
