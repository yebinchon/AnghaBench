
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* binding_table ;
typedef TYPE_2__* binding_entry ;
struct TYPE_6__ {struct TYPE_6__* chain; int name; } ;
struct TYPE_5__ {size_t chain_count; size_t entry_count; TYPE_2__** chain; } ;


 size_t ENTRY_INDEX (unsigned int const,size_t const) ;
 unsigned int IDENTIFIER_HASH_VALUE (int ) ;
 int binding_table_construct (TYPE_1__*,size_t const) ;

__attribute__((used)) static void
binding_table_expand (binding_table table)
{
  const size_t old_chain_count = table->chain_count;
  const size_t old_entry_count = table->entry_count;
  const size_t new_chain_count = 2 * old_chain_count;
  binding_entry *old_chains = table->chain;
  size_t i;

  binding_table_construct (table, new_chain_count);
  for (i = 0; i < old_chain_count; ++i)
    {
      binding_entry entry = old_chains[i];
      for (; entry != ((void*)0); entry = old_chains[i])
 {
   const unsigned int hash = IDENTIFIER_HASH_VALUE (entry->name);
   const size_t j = ENTRY_INDEX (hash, new_chain_count);

   old_chains[i] = entry->chain;
   entry->chain = table->chain[j];
   table->chain[j] = entry;
 }
    }
  table->entry_count = old_entry_count;
}
