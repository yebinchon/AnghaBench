
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_merge_hash_entry {int dummy; } ;
struct sec_merge_hash {unsigned int entsize; int strings; int * last; int * first; scalar_t__ size; int table; } ;
typedef int bfd_boolean ;


 int bfd_hash_table_init_n (int *,int ,int,int) ;
 struct sec_merge_hash* bfd_malloc (int) ;
 int free (struct sec_merge_hash*) ;
 int sec_merge_hash_newfunc ;

__attribute__((used)) static struct sec_merge_hash *
sec_merge_init (unsigned int entsize, bfd_boolean strings)
{
  struct sec_merge_hash *table;

  table = bfd_malloc (sizeof (struct sec_merge_hash));
  if (table == ((void*)0))
    return ((void*)0);

  if (! bfd_hash_table_init_n (&table->table, sec_merge_hash_newfunc,
          sizeof (struct sec_merge_hash_entry), 16699))
    {
      free (table);
      return ((void*)0);
    }

  table->size = 0;
  table->first = ((void*)0);
  table->last = ((void*)0);
  table->entsize = entsize;
  table->strings = strings;

  return table;
}
