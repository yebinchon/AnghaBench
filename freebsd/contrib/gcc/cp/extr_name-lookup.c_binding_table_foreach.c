
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* bt_foreach_proc ) (TYPE_1__*,void*) ;
typedef TYPE_2__* binding_table ;
typedef TYPE_1__* binding_entry ;
struct TYPE_7__ {size_t chain_count; TYPE_1__** chain; } ;
struct TYPE_6__ {struct TYPE_6__* chain; } ;



void
binding_table_foreach (binding_table table, bt_foreach_proc proc, void *data)
{
  const size_t chain_count = table->chain_count;
  size_t i;

  for (i = 0; i < chain_count; ++i)
    {
      binding_entry entry = table->chain[i];
      for (; entry != ((void*)0); entry = entry->chain)
 proc (entry, data);
    }
}
