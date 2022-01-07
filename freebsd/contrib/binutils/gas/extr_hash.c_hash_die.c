
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_control {int memory; } ;


 int free (struct hash_control*) ;
 int obstack_free (int *,int ) ;

void
hash_die (struct hash_control *table)
{
  obstack_free (&table->memory, 0);
  free (table);
}
