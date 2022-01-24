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
 scalar_t__ LOC_TYPEDEF ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 struct type* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct type* FUNC3 (char*) ; 
 struct symbol* FUNC4 (char*,struct block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 

struct type *
FUNC5 (char *name, struct block *block, int noerr)
{
  struct symbol *sym;
  struct type *tmp;

  sym = FUNC4 (name, block, VAR_DOMAIN, 0, (struct symtab **) NULL);
  if (sym == NULL || FUNC0 (sym) != LOC_TYPEDEF)
    {
      tmp = FUNC3 (name);
      if (tmp)
	{
	  return (tmp);
	}
      else if (!tmp && noerr)
	{
	  return (NULL);
	}
      else
	{
	  FUNC2 ("No type named %s.", name);
	}
    }
  return (FUNC1 (sym));
}