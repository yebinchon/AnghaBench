
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_init_entries; unsigned int hash_table_size; int * init_entries; int ** value_hash_table; int ** name_hash_table; } ;
typedef int CGEN_KEYWORD_ENTRY ;
typedef TYPE_1__ CGEN_KEYWORD ;


 unsigned int KEYWORD_HASH_SIZE (int) ;
 int cgen_keyword_add (TYPE_1__*,int *) ;
 int memset (int **,int ,unsigned int) ;
 scalar_t__ xmalloc (unsigned int) ;

__attribute__((used)) static void
build_keyword_hash_tables (CGEN_KEYWORD *kt)
{
  int i;


  unsigned int size = KEYWORD_HASH_SIZE (kt->num_init_entries);

  kt->hash_table_size = size;
  kt->name_hash_table = (CGEN_KEYWORD_ENTRY **)
    xmalloc (size * sizeof (CGEN_KEYWORD_ENTRY *));
  memset (kt->name_hash_table, 0, size * sizeof (CGEN_KEYWORD_ENTRY *));
  kt->value_hash_table = (CGEN_KEYWORD_ENTRY **)
    xmalloc (size * sizeof (CGEN_KEYWORD_ENTRY *));
  memset (kt->value_hash_table, 0, size * sizeof (CGEN_KEYWORD_ENTRY *));



  for (i = kt->num_init_entries - 1; i >= 0; --i)
    cgen_keyword_add (kt, &kt->init_entries[i]);
}
