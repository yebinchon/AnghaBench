
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;


 char* alloca (int) ;
 scalar_t__ cp_find_first_component (char const*) ;
 struct symbol* cp_lookup_symbol_namespace (char*,char const*,char const*,struct block const*,int const,struct symtab**) ;
 int gdb_assert (int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static struct symbol *
lookup_namespace_scope (const char *name,
   const char *linkage_name,
   const struct block *block,
   const domain_enum domain,
   struct symtab **symtab,
   const char *scope,
   int scope_len)
{
  char *namespace;

  if (scope[scope_len] != '\0')
    {


      struct symbol *sym;
      int new_scope_len = scope_len;


      if (new_scope_len != 0)
 {
   gdb_assert (scope[new_scope_len] == ':');
   new_scope_len += 2;
 }
      new_scope_len += cp_find_first_component (scope + new_scope_len);
      sym = lookup_namespace_scope (name, linkage_name, block,
        domain, symtab,
        scope, new_scope_len);
      if (sym != ((void*)0))
 return sym;
    }




  namespace = alloca (scope_len + 1);
  strncpy (namespace, scope, scope_len);
  namespace[scope_len] = '\0';
  return cp_lookup_symbol_namespace (namespace, name, linkage_name,
         block, domain, symtab);
}
