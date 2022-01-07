
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {int size; int table; scalar_t__ n_elems; } ;
struct expr {int dummy; } ;


 int compute_hash_table_work (struct hash_table*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
compute_hash_table (struct hash_table *table)
{

  table->n_elems = 0;
  memset (table->table, 0, table->size * sizeof (struct expr *));

  compute_hash_table_work (table);
}
