
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_hash_table {int * memory; } ;


 int objalloc_free (int *) ;

void
bfd_hash_table_free (struct bfd_hash_table *table)
{
  objalloc_free (table->memory);
  table->memory = ((void*)0);
}
