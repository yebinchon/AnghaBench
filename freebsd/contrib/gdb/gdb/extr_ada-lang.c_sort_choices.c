
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 scalar_t__ mangled_ordered_before (int ,int ) ;

__attribute__((used)) static void
sort_choices (struct symbol *syms[], struct block *blocks[], int nsyms)
{
  int i, j;
  for (i = 1; i < nsyms; i += 1)
    {
      struct symbol *sym = syms[i];
      struct block *block = blocks[i];
      int j;

      for (j = i - 1; j >= 0; j -= 1)
 {
   if (mangled_ordered_before (DEPRECATED_SYMBOL_NAME (syms[j]),
          DEPRECATED_SYMBOL_NAME (sym)))
     break;
   syms[j + 1] = syms[j];
   blocks[j + 1] = blocks[j];
 }
      syms[j + 1] = sym;
      blocks[j + 1] = block;
    }
}
