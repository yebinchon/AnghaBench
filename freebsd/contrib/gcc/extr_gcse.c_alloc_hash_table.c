
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {int size; int set_p; int table; } ;
struct expr {int dummy; } ;


 int gmalloc (int) ;

__attribute__((used)) static void
alloc_hash_table (int n_insns, struct hash_table *table, int set_p)
{
  int n;

  table->size = n_insns / 4;
  if (table->size < 11)
    table->size = 11;




  table->size |= 1;
  n = table->size * sizeof (struct expr *);
  table->table = gmalloc (n);
  table->set_p = set_p;
}
