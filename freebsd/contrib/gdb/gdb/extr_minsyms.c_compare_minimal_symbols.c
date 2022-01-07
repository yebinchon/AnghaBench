
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;


 char* SYMBOL_LINKAGE_NAME (struct minimal_symbol const*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol const*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
compare_minimal_symbols (const void *fn1p, const void *fn2p)
{
  const struct minimal_symbol *fn1;
  const struct minimal_symbol *fn2;

  fn1 = (const struct minimal_symbol *) fn1p;
  fn2 = (const struct minimal_symbol *) fn2p;

  if (SYMBOL_VALUE_ADDRESS (fn1) < SYMBOL_VALUE_ADDRESS (fn2))
    {
      return (-1);
    }
  else if (SYMBOL_VALUE_ADDRESS (fn1) > SYMBOL_VALUE_ADDRESS (fn2))
    {
      return (1);
    }
  else

    {
      char *name1 = SYMBOL_LINKAGE_NAME (fn1);
      char *name2 = SYMBOL_LINKAGE_NAME (fn2);

      if (name1 && name2)
 return strcmp (name1, name2);
      else if (name2)
 return 1;
      else if (name1)
 return -1;
      else
 return (0);
    }
}
