
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {int table; } ;


 int free (int ) ;

__attribute__((used)) static void
free_hash_table (struct hash_table *table)
{
  free (table->table);
}
