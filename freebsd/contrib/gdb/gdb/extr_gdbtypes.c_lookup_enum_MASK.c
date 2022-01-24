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
 int /*<<< orphan*/  STRUCT_DOMAIN ; 
 struct type* FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct symbol* FUNC3 (char*,struct block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 

struct type *
FUNC4 (char *name, struct block *block)
{
  struct symbol *sym;

  sym = FUNC3 (name, block, STRUCT_DOMAIN, 0,
		       (struct symtab **) NULL);
  if (sym == NULL)
    {
      FUNC2 ("No enum type named %s.", name);
    }
  if (FUNC1 (FUNC0 (sym)) != TYPE_CODE_ENUM)
    {
      FUNC2 ("This context has class, struct or union %s, not an enum.", name);
    }
  return (FUNC0 (sym));
}