
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * name_hash_table; } ;
struct TYPE_6__ {char const* spec; int * current_entry; scalar_t__ current_hash; TYPE_2__* table; } ;
typedef TYPE_1__ CGEN_KEYWORD_SEARCH ;
typedef TYPE_2__ CGEN_KEYWORD ;


 int abort () ;
 int build_keyword_hash_tables (TYPE_2__*) ;

CGEN_KEYWORD_SEARCH
cgen_keyword_search_init (CGEN_KEYWORD *kt, const char *spec)
{
  CGEN_KEYWORD_SEARCH search;


  if (spec != ((void*)0))
    abort ();

  if (kt->name_hash_table == ((void*)0))
    build_keyword_hash_tables (kt);

  search.table = kt;
  search.spec = spec;
  search.current_hash = 0;
  search.current_entry = ((void*)0);
  return search;
}
