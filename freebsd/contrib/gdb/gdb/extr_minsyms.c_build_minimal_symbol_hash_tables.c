
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int minimal_symbol_count; scalar_t__* msymbol_demangled_hash; scalar_t__* msymbol_hash; struct minimal_symbol* msymbols; } ;
struct minimal_symbol {scalar_t__ demangled_hash_next; scalar_t__ hash_next; } ;


 int MINIMAL_SYMBOL_HASH_SIZE ;
 int * SYMBOL_DEMANGLED_NAME (struct minimal_symbol*) ;
 int add_minsym_to_demangled_hash_table (struct minimal_symbol*,scalar_t__*) ;
 int add_minsym_to_hash_table (struct minimal_symbol*,scalar_t__*) ;

__attribute__((used)) static void
build_minimal_symbol_hash_tables (struct objfile *objfile)
{
  int i;
  struct minimal_symbol *msym;


  for (i = 0; i < MINIMAL_SYMBOL_HASH_SIZE; i++)
    {
      objfile->msymbol_hash[i] = 0;
      objfile->msymbol_demangled_hash[i] = 0;
    }


  for (i = objfile->minimal_symbol_count, msym = objfile->msymbols;
       i > 0;
       i--, msym++)
    {
      msym->hash_next = 0;
      add_minsym_to_hash_table (msym, objfile->msymbol_hash);

      msym->demangled_hash_next = 0;
      if (SYMBOL_DEMANGLED_NAME (msym) != ((void*)0))
 add_minsym_to_demangled_hash_table (msym,
                                            objfile->msymbol_demangled_hash);
    }
}
