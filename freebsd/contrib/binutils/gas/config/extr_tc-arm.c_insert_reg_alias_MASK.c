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
struct reg_entry {int number; int type; char const* name; int /*<<< orphan*/ * neon; scalar_t__ builtin; } ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  arm_reg_hsh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct reg_entry* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct reg_entry* FUNC5 (int) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static struct reg_entry *
FUNC7 (char *str, int number, int type)
{
  struct reg_entry *new;
  const char *name;

  if ((new = FUNC3 (arm_reg_hsh, str)) != 0)
    {
      if (new->builtin)
	FUNC2 (FUNC0("ignoring attempt to redefine built-in register '%s'"), str);

      /* Only warn about a redefinition if it's not defined as the
	 same register.	 */
      else if (new->number != number || new->type != type)
	FUNC2 (FUNC0("ignoring redefinition of register alias '%s'"), str);

      return 0;
    }

  name = FUNC6 (str);
  new = FUNC5 (sizeof (struct reg_entry));

  new->name = name;
  new->number = number;
  new->type = type;
  new->builtin = FALSE;
  new->neon = NULL;

  if (FUNC4 (arm_reg_hsh, name, (PTR) new))
    FUNC1 ();
  
  return new;
}