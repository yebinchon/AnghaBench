
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_cache {struct symbol_cache* symbol; } ;


 int kfree (struct symbol_cache*) ;

__attribute__((used)) static void free_symbol_cache(struct symbol_cache *sc)
{
 kfree(sc->symbol);
 kfree(sc);
}
