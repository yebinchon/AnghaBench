
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
typedef struct symbol block ;


 int CHECK_TYPEDEF (int *) ;
 int GROW_VECT (struct symbol**,size_t,int) ;
 int * SYMBOL_TYPE (struct symbol*) ;
 struct symbol** defn_blocks ;
 struct symbol** defn_symbols ;
 size_t defn_vector_size ;
 scalar_t__ lesseq_defined_than (struct symbol*,struct symbol*) ;
 int ndefns ;

__attribute__((used)) static void
add_defn_to_vec (struct symbol *sym, struct block *block)
{
  int i;
  size_t tmp;

  if (SYMBOL_TYPE (sym) != ((void*)0))
    CHECK_TYPEDEF (SYMBOL_TYPE (sym));
  for (i = 0; i < ndefns; i += 1)
    {
      if (lesseq_defined_than (sym, defn_symbols[i]))
 return;
      else if (lesseq_defined_than (defn_symbols[i], sym))
 {
   defn_symbols[i] = sym;
   defn_blocks[i] = block;
   return;
 }
    }

  tmp = defn_vector_size;
  GROW_VECT (defn_symbols, tmp, ndefns + 2);
  GROW_VECT (defn_blocks, defn_vector_size, ndefns + 2);

  defn_symbols[ndefns] = sym;
  defn_blocks[ndefns] = block;
  ndefns += 1;
}
