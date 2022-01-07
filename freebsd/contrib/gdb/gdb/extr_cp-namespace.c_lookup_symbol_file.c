
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef scalar_t__ domain_enum ;


 scalar_t__ const VAR_DOMAIN ;
 struct block* block_global_block (struct block const*) ;
 struct symbol* lookup_possible_namespace_symbol (char const*,struct symtab**) ;
 struct symbol* lookup_symbol_aux_block (char const*,char const*,struct block const*,scalar_t__ const,struct symtab**) ;
 struct symbol* lookup_symbol_global (char const*,char const*,scalar_t__ const,struct symtab**) ;
 struct symbol* lookup_symbol_static (char const*,char const*,struct block const*,scalar_t__ const,struct symtab**) ;

__attribute__((used)) static struct symbol *
lookup_symbol_file (const char *name,
      const char *linkage_name,
      const struct block *block,
      const domain_enum domain,
      struct symtab **symtab,
      int anonymous_namespace)
{
  struct symbol *sym = ((void*)0);

  sym = lookup_symbol_static (name, linkage_name, block, domain, symtab);
  if (sym != ((void*)0))
    return sym;

  if (anonymous_namespace)
    {




      const struct block *global_block = block_global_block (block);

      if (global_block != ((void*)0))
 sym = lookup_symbol_aux_block (name, linkage_name, global_block,
           domain, symtab);
    }
  else
    {
      sym = lookup_symbol_global (name, linkage_name, domain, symtab);
    }

  if (sym != ((void*)0))
    return sym;
  if (domain == VAR_DOMAIN)
    {
      sym = lookup_possible_namespace_symbol (name, symtab);
      if (sym != ((void*)0))
 return sym;
    }

  return ((void*)0);
}
