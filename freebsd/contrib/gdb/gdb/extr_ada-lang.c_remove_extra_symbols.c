
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct block {int dummy; } ;


 scalar_t__ DEPRECATED_STREQ (int *,int *) ;
 int * DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 scalar_t__ LOC_STATIC ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 scalar_t__ is_nondebugging_type (int ) ;

__attribute__((used)) static int
remove_extra_symbols (struct symbol **syms, struct block **blocks, int nsyms)
{
  int i, j;

  i = 0;
  while (i < nsyms)
    {
      if (DEPRECATED_SYMBOL_NAME (syms[i]) != ((void*)0)
   && SYMBOL_CLASS (syms[i]) == LOC_STATIC
   && is_nondebugging_type (SYMBOL_TYPE (syms[i])))
 {
   for (j = 0; j < nsyms; j += 1)
     {
       if (i != j
    && DEPRECATED_SYMBOL_NAME (syms[j]) != ((void*)0)
    && DEPRECATED_STREQ (DEPRECATED_SYMBOL_NAME (syms[i]), DEPRECATED_SYMBOL_NAME (syms[j]))
    && SYMBOL_CLASS (syms[i]) == SYMBOL_CLASS (syms[j])
    && SYMBOL_VALUE_ADDRESS (syms[i])
    == SYMBOL_VALUE_ADDRESS (syms[j]))
  {
    int k;
    for (k = i + 1; k < nsyms; k += 1)
      {
        syms[k - 1] = syms[k];
        blocks[k - 1] = blocks[k];
      }
    nsyms -= 1;
    goto NextSymbol;
  }
     }
 }
      i += 1;
    NextSymbol:
      ;
    }
  return nsyms;
}
