
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {scalar_t__ in_memory; struct table_elt* next_same_hash; } ;


 int HASH_SIZE ;
 int remove_from_table (struct table_elt*,int) ;
 struct table_elt** table ;

__attribute__((used)) static void
invalidate_memory (void)
{
  int i;
  struct table_elt *p, *next;

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = next)
      {
 next = p->next_same_hash;
 if (p->in_memory)
   remove_from_table (p, i);
      }
}
