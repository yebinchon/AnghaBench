#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  scalar_t__ domain_enum ;

/* Variables and functions */
 scalar_t__ const VAR_DOMAIN ; 
 struct block* FUNC0 (struct block const*) ; 
 struct symbol* FUNC1 (char const*,struct symtab**) ; 
 struct symbol* FUNC2 (char const*,char const*,struct block const*,scalar_t__ const,struct symtab**) ; 
 struct symbol* FUNC3 (char const*,char const*,scalar_t__ const,struct symtab**) ; 
 struct symbol* FUNC4 (char const*,char const*,struct block const*,scalar_t__ const,struct symtab**) ; 

__attribute__((used)) static struct symbol *
FUNC5 (const char *name,
		    const char *linkage_name,
		    const struct block *block,
		    const domain_enum domain,
		    struct symtab **symtab,
		    int anonymous_namespace)
{
  struct symbol *sym = NULL;

  sym = FUNC4 (name, linkage_name, block, domain, symtab);
  if (sym != NULL)
    return sym;

  if (anonymous_namespace)
    {
      /* Symbols defined in anonymous namespaces have external linkage
	 but should be treated as local to a single file nonetheless.
	 So we only search the current file's global block.  */

      const struct block *global_block = FUNC0 (block);
      
      if (global_block != NULL)
	sym = FUNC2 (name, linkage_name, global_block,
				       domain, symtab);
    }
  else
    {
      sym = FUNC3 (name, linkage_name, domain, symtab);
    }

  if (sym != NULL)
    return sym;

  /* Now call "lookup_possible_namespace_symbol".  Symbols in here
     claim to be associated to namespaces, but this claim might be
     incorrect: the names in question might actually correspond to
     classes instead of namespaces.  But if they correspond to
     classes, then we should have found a match for them above.  So if
     we find them now, they should be genuine.  */

  /* FIXME: carlton/2003-06-12: This is a hack and should eventually
     be deleted: see comments below.  */

  if (domain == VAR_DOMAIN)
    {
      sym = FUNC1 (name, symtab);
      if (sym != NULL)
	return sym;
    }

  return NULL;
}