
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {struct symbol* hash_next; } ;
struct dictionary {int dummy; } ;


 struct symbol** DICT_HASHED_BUCKETS (struct dictionary*) ;
 unsigned int DICT_HASHED_NBUCKETS (struct dictionary*) ;
 int SYMBOL_NATURAL_NAME (struct symbol*) ;
 unsigned int msymbol_hash_iw (int ) ;

__attribute__((used)) static void
insert_symbol_hashed (struct dictionary *dict,
        struct symbol *sym)
{
  unsigned int hash_index;
  struct symbol **buckets = DICT_HASHED_BUCKETS (dict);

  hash_index = (msymbol_hash_iw (SYMBOL_NATURAL_NAME (sym))
  % DICT_HASHED_NBUCKETS (dict));
  sym->hash_next = buckets[hash_index];
  buckets[hash_index] = sym;
}
