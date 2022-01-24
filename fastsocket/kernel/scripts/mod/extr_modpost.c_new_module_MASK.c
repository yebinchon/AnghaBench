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
struct module {char* name; int gpl_compatible; struct module* next; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct module*,int /*<<< orphan*/ ,int) ; 
 struct module* modules ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static struct module *FUNC6(char *modname)
{
	struct module *mod;
	char *p, *s;

	mod = FUNC0(FUNC1(sizeof(*mod)));
	FUNC2(mod, 0, sizeof(*mod));
	p = FUNC0(FUNC4(modname));

	/* strip trailing .o */
	s = FUNC5(p, '.');
	if (s != NULL)
		if (FUNC3(s, ".o") == 0)
			*s = '\0';

	/* add to list */
	mod->name = p;
	mod->gpl_compatible = -1;
	mod->next = modules;
	modules = mod;

	return mod;
}