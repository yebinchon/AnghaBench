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
struct symbol {int export; scalar_t__ kernel; scalar_t__ vmlinux; scalar_t__ preloaded; struct module* module; } ;
struct module {int /*<<< orphan*/  name; } ;
typedef  enum export { ____Placeholder_export } export ;

/* Variables and functions */
 struct symbol* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC2 (char const*,struct module*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct symbol *FUNC4(const char *name, struct module *mod,
				       enum export export)
{
	struct symbol *s = FUNC0(name);

	if (!s) {
		s = FUNC2(name, mod, export);
	} else {
		if (!s->preloaded) {
			FUNC3("%s: '%s' exported twice. Previous export "
			     "was in %s%s\n", mod->name, name,
			     s->module->name,
			     FUNC1(s->module->name) ?"":".ko");
		} else {
			/* In case Modules.symvers was out of date */
			s->module = mod;
		}
	}
	s->preloaded = 0;
	s->vmlinux   = FUNC1(mod->name);
	s->kernel    = 0;
	s->export    = export;
	return s;
}