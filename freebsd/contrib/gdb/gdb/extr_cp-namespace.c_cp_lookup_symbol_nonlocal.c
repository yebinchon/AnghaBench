
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;


 int block_scope (struct block const*) ;
 struct symbol* lookup_namespace_scope (char const*,char const*,struct block const*,int const,struct symtab**,int ,int ) ;

struct symbol *
cp_lookup_symbol_nonlocal (const char *name,
      const char *linkage_name,
      const struct block *block,
      const domain_enum domain,
      struct symtab **symtab)
{
  return lookup_namespace_scope (name, linkage_name, block, domain,
     symtab, block_scope (block), 0);
}
