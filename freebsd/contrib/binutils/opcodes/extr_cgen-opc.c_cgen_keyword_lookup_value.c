
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__** value_hash_table; int * name_hash_table; } ;
struct TYPE_7__ {int value; struct TYPE_7__* next_value; } ;
typedef TYPE_1__ CGEN_KEYWORD_ENTRY ;
typedef TYPE_2__ CGEN_KEYWORD ;


 int build_keyword_hash_tables (TYPE_2__*) ;
 size_t hash_keyword_value (TYPE_2__*,int) ;

const CGEN_KEYWORD_ENTRY *
cgen_keyword_lookup_value (CGEN_KEYWORD *kt, int value)
{
  const CGEN_KEYWORD_ENTRY *ke;

  if (kt->name_hash_table == ((void*)0))
    build_keyword_hash_tables (kt);

  ke = kt->value_hash_table[hash_keyword_value (kt, value)];

  while (ke != ((void*)0))
    {
      if (value == ke->value)
 return ke;
      ke = ke->next_value;
    }

  return ((void*)0);
}
