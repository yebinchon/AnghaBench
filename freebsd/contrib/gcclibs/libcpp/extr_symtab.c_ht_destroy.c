
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* entries; scalar_t__ entries_owned; int stack; } ;
typedef TYPE_1__ hash_table ;


 int free (TYPE_1__*) ;
 int obstack_free (int *,int *) ;

void
ht_destroy (hash_table *table)
{
  obstack_free (&table->stack, ((void*)0));
  if (table->entries_owned)
    free (table->entries);
  free (table);
}
