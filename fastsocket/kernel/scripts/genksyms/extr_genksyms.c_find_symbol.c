
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int type; scalar_t__ is_declared; int name; struct symbol* hash_next; } ;
typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;


 unsigned long HASH_BUCKETS ;
 unsigned long crc32 (char const*) ;
 scalar_t__ map_to_ns (int) ;
 scalar_t__ strcmp (char const*,int ) ;
 struct symbol** symtab ;

struct symbol *find_symbol(const char *name, enum symbol_type ns)
{
 unsigned long h = crc32(name) % HASH_BUCKETS;
 struct symbol *sym;

 for (sym = symtab[h]; sym; sym = sym->hash_next)
  if (map_to_ns(sym->type) == map_to_ns(ns) &&
      strcmp(name, sym->name) == 0 &&
      sym->is_declared)
   break;

 return sym;
}
