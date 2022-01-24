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
struct symbol {int /*<<< orphan*/  name; int /*<<< orphan*/  export; struct module* module; struct symbol* next; } ;
struct module {char* name; int /*<<< orphan*/  gpl_compatible; struct symbol* unres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void FUNC4(struct module *mod)
{
	struct symbol *s, *exp;

	for (s = mod->unres; s; s = s->next) {
		const char *basename;
		exp = FUNC2(s->name);
		if (!exp || exp->module == mod)
			continue;
		basename = FUNC3(mod->name, '/');
		if (basename)
			basename++;
		else
			basename = mod->name;
		if (!mod->gpl_compatible)
			FUNC0(exp->export, basename, exp->name);
		FUNC1(exp->export, basename, exp->name);
	}
}