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
struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 struct type* FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 char* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 struct symbol* FUNC5 (char*,struct block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

struct type *
FUNC9 (char *name, struct type *type, struct block *block)
{
  struct symbol *sym;
  char *nam = (char *) FUNC3 (FUNC8 (name) + FUNC8 (FUNC2 (type)) + 4);
  FUNC7 (nam, name);
  FUNC6 (nam, "<");
  FUNC6 (nam, FUNC2 (type));
  FUNC6 (nam, " >");		/* FIXME, extra space still introduced in gcc? */

  sym = FUNC5 (nam, block, VAR_DOMAIN, 0, (struct symtab **) NULL);

  if (sym == NULL)
    {
      FUNC4 ("No template type named %s.", name);
    }
  if (FUNC1 (FUNC0 (sym)) != TYPE_CODE_STRUCT)
    {
      FUNC4 ("This context has class, union or enum %s, not a struct.", name);
    }
  return (FUNC0 (sym));
}