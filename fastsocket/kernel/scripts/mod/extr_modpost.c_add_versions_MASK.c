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
struct symbol {int /*<<< orphan*/  name; int /*<<< orphan*/  crc; int /*<<< orphan*/  crc_valid; struct module* module; struct symbol* next; int /*<<< orphan*/  weak; } ;
struct module {int /*<<< orphan*/  name; struct symbol* unres; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*,...) ; 
 struct symbol* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ have_vmlinux ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modversions ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ warn_unresolved ; 

__attribute__((used)) static int FUNC4(struct buffer *b, struct module *mod)
{
	struct symbol *s, *exp;
	int err = 0;

	for (s = mod->unres; s; s = s->next) {
		exp = FUNC1(s->name);
		if (!exp || exp->module == mod) {
			if (have_vmlinux && !s->weak) {
				if (warn_unresolved) {
					FUNC3("\"%s\" [%s.ko] undefined!\n",
					     s->name, mod->name);
				} else {
					FUNC2("\"%s\" [%s.ko] undefined!\n",
					          s->name, mod->name);
					err = 1;
				}
			}
			continue;
		}
		s->module = exp->module;
		s->crc_valid = exp->crc_valid;
		s->crc = exp->crc;
	}

	if (!modversions)
		return err;

	FUNC0(b, "\n");
	FUNC0(b, "static const struct modversion_info ____versions[]\n");
	FUNC0(b, "__used\n");
	FUNC0(b, "__attribute__((section(\"__versions\"))) = {\n");

	for (s = mod->unres; s; s = s->next) {
		if (!s->module)
			continue;
		if (!s->crc_valid) {
			FUNC3("\"%s\" [%s.ko] has no CRC!\n",
				s->name, mod->name);
			continue;
		}
		FUNC0(b, "\t{ %#8x, \"%s\" },\n", s->crc, s->name);
	}

	FUNC0(b, "};\n");

	return err;
}