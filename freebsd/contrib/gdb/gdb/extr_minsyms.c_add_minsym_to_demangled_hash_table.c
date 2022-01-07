
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {struct minimal_symbol* demangled_hash_next; } ;


 unsigned int MINIMAL_SYMBOL_HASH_SIZE ;
 int SYMBOL_DEMANGLED_NAME (struct minimal_symbol*) ;
 unsigned int msymbol_hash_iw (int ) ;

__attribute__((used)) static void
add_minsym_to_demangled_hash_table (struct minimal_symbol *sym,
                                  struct minimal_symbol **table)
{
  if (sym->demangled_hash_next == ((void*)0))
    {
      unsigned int hash = msymbol_hash_iw (SYMBOL_DEMANGLED_NAME (sym)) % MINIMAL_SYMBOL_HASH_SIZE;
      sym->demangled_hash_next = table[hash];
      table[hash] = sym;
    }
}
