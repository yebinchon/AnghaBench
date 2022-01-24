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

/* Variables and functions */
 int /*<<< orphan*/  STRUCT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct symbol* FUNC3 (char*,struct block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 

struct symbol *
FUNC4 (char *name, struct block *block, int noerr)
{
  struct symbol *sym;

  sym = FUNC3 (name, block, STRUCT_DOMAIN, 0, 
		       (struct symtab **) NULL);

  if (sym == NULL)
    {
      if (noerr)
	return 0;
      else 
	FUNC2 ("No struct type named %s.", name);
    }
  if (FUNC1 (FUNC0 (sym)) != TYPE_CODE_STRUCT)
    {
      if (noerr)
	return 0;
      else
	FUNC2 ("This context has class, union or enum %s, not a struct.", 
	       name);
    }
  return sym;
}