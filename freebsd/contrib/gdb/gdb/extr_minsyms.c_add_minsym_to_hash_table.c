
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {struct minimal_symbol* hash_next; } ;


 unsigned int MINIMAL_SYMBOL_HASH_SIZE ;
 int SYMBOL_LINKAGE_NAME (struct minimal_symbol*) ;
 unsigned int msymbol_hash (int ) ;

void
add_minsym_to_hash_table (struct minimal_symbol *sym,
     struct minimal_symbol **table)
{
  if (sym->hash_next == ((void*)0))
    {
      unsigned int hash
 = msymbol_hash (SYMBOL_LINKAGE_NAME (sym)) % MINIMAL_SYMBOL_HASH_SIZE;
      sym->hash_next = table[hash];
      table[hash] = sym;
    }
}
