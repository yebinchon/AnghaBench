
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_hash_table {unsigned int size; struct bfd_hash_entry** table; } ;
struct bfd_hash_entry {unsigned int hash; struct bfd_hash_entry* next; } ;


 int abort () ;

void
bfd_hash_replace (struct bfd_hash_table *table,
    struct bfd_hash_entry *old,
    struct bfd_hash_entry *nw)
{
  unsigned int index;
  struct bfd_hash_entry **pph;

  index = old->hash % table->size;
  for (pph = &table->table[index];
       (*pph) != ((void*)0);
       pph = &(*pph)->next)
    {
      if (*pph == old)
 {
   *pph = nw;
   return;
 }
    }

  abort ();
}
