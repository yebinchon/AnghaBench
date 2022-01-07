
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_cache {unsigned long addr; scalar_t__ offset; int symbol; } ;


 scalar_t__ kallsyms_lookup_name (int ) ;

__attribute__((used)) static unsigned long update_symbol_cache(struct symbol_cache *sc)
{
 sc->addr = (unsigned long)kallsyms_lookup_name(sc->symbol);
 if (sc->addr)
  sc->addr += sc->offset;
 return sc->addr;
}
