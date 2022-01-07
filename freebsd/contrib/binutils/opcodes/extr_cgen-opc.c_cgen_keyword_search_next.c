
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__ const* next_name; } ;
struct TYPE_7__ {size_t current_hash; TYPE_3__ const* current_entry; TYPE_1__* table; } ;
struct TYPE_6__ {size_t hash_table_size; TYPE_3__ const** name_hash_table; } ;
typedef TYPE_2__ CGEN_KEYWORD_SEARCH ;
typedef TYPE_3__ CGEN_KEYWORD_ENTRY ;



const CGEN_KEYWORD_ENTRY *
cgen_keyword_search_next (CGEN_KEYWORD_SEARCH *search)
{

  if (search->current_hash == search->table->hash_table_size)
    return ((void*)0);


  if (search->current_entry != ((void*)0)

      && search->current_entry->next_name != ((void*)0))
    {
      search->current_entry = search->current_entry->next_name;
      return search->current_entry;
    }


  if (search->current_entry != ((void*)0))
    ++search->current_hash;

  while (search->current_hash < search->table->hash_table_size)
    {
      search->current_entry = search->table->name_hash_table[search->current_hash];
      if (search->current_entry != ((void*)0))
 return search->current_entry;
      ++search->current_hash;
    }

  return ((void*)0);
}
