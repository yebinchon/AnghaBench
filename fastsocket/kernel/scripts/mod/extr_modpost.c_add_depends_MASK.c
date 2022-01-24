#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {TYPE_1__* module; struct symbol* next; } ;
struct module {struct symbol* unres; int /*<<< orphan*/  name; int /*<<< orphan*/  seen; struct module* next; } ;
struct buffer {int dummy; } ;
struct TYPE_2__ {int seen; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(struct buffer *b, struct module *mod,
			struct module *modules)
{
	struct symbol *s;
	struct module *m;
	int first = 1;

	for (m = modules; m; m = m->next)
		m->seen = FUNC1(m->name);

	FUNC0(b, "\n");
	FUNC0(b, "static const char __module_depends[]\n");
	FUNC0(b, "__used\n");
	FUNC0(b, "__attribute__((section(\".modinfo\"))) =\n");
	FUNC0(b, "\"depends=");
	for (s = mod->unres; s; s = s->next) {
		const char *p;
		if (!s->module)
			continue;

		if (s->module->seen)
			continue;

		s->module->seen = 1;
		p = FUNC2(s->module->name, '/');
		if (p)
			p++;
		else
			p = s->module->name;
		FUNC0(b, "%s%s", first ? "" : ",", p);
		first = 0;
	}
	FUNC0(b, "\";\n");
}