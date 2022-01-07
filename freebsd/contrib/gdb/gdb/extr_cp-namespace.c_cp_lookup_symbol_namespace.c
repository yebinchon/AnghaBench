
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct using_direct {char* inner; int outer; struct using_direct* next; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;


 char* alloca (scalar_t__) ;
 struct using_direct* block_using (struct block const*) ;
 int cp_is_anonymous (char const*) ;
 struct symbol* lookup_symbol_file (char const*,char const*,struct block const*,int const,struct symtab**,int ) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

struct symbol *
cp_lookup_symbol_namespace (const char *namespace,
       const char *name,
       const char *linkage_name,
       const struct block *block,
       const domain_enum domain,
       struct symtab **symtab)
{
  const struct using_direct *current;
  struct symbol *sym;





  for (current = block_using (block);
       current != ((void*)0);
       current = current->next)
    {
      if (strcmp (namespace, current->outer) == 0)
 {
   sym = cp_lookup_symbol_namespace (current->inner,
         name,
         linkage_name,
         block,
         domain,
         symtab);
   if (sym != ((void*)0))
     return sym;
 }
    }





  if (namespace[0] == '\0')
    {
      return lookup_symbol_file (name, linkage_name, block,
     domain, symtab, 0);
    }
  else
    {
      char *concatenated_name
 = alloca (strlen (namespace) + 2 + strlen (name) + 1);
      strcpy (concatenated_name, namespace);
      strcat (concatenated_name, "::");
      strcat (concatenated_name, name);
      sym = lookup_symbol_file (concatenated_name, linkage_name,
    block, domain, symtab,
    cp_is_anonymous (namespace));
      return sym;
    }
}
