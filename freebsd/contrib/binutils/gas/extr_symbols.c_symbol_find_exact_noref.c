
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct local_symbol {int dummy; } ;


 int S_CLEAR_WEAKREFD (int *) ;
 scalar_t__ hash_find (int ,char const*) ;
 int local_hash ;
 int sy_hash ;

symbolS *
symbol_find_exact_noref (const char *name, int noref)
{
  struct local_symbol *locsym;
  symbolS* sym;

  locsym = (struct local_symbol *) hash_find (local_hash, name);
  if (locsym != ((void*)0))
    return (symbolS *) locsym;

  sym = ((symbolS *) hash_find (sy_hash, name));






  if (sym && ! noref)
    S_CLEAR_WEAKREFD (sym);

  return sym;
}
