
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_cache {long offset; int symbol; } ;


 int GFP_KERNEL ;
 int kfree (struct symbol_cache*) ;
 int kstrdup (char const*,int ) ;
 struct symbol_cache* kzalloc (int,int ) ;
 scalar_t__ strlen (char const*) ;
 int update_symbol_cache (struct symbol_cache*) ;

__attribute__((used)) static struct symbol_cache *alloc_symbol_cache(const char *sym, long offset)
{
 struct symbol_cache *sc;

 if (!sym || strlen(sym) == 0)
  return ((void*)0);
 sc = kzalloc(sizeof(struct symbol_cache), GFP_KERNEL);
 if (!sc)
  return ((void*)0);

 sc->symbol = kstrdup(sym, GFP_KERNEL);
 if (!sc->symbol) {
  kfree(sc);
  return ((void*)0);
 }
 sc->offset = offset;

 update_symbol_cache(sc);
 return sc;
}
