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
struct module {int skip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct module* FUNC2 (char*) ; 
 char* FUNC3 (unsigned long*,void*,unsigned long) ; 
 void* FUNC4 (char const*,unsigned long*) ; 
 int have_vmlinux ; 
 scalar_t__ FUNC5 (char*) ; 
 struct module* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void*,unsigned long) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static void FUNC9(const char *fname)
{
	unsigned long size, pos = 0;
	void *file = FUNC4(fname, &size);
	char *line;

	if (!file)		/* No old markers, silently ignore */
		return;

	while ((line = FUNC3(&pos, file, size))) {
		char *marker, *modname, *fmt;
		struct module *mod;

		marker = line;
		modname = FUNC8(marker, '\t');
		if (!modname)
			goto fail;
		*modname++ = '\0';
		fmt = FUNC8(modname, '\t');
		if (!fmt)
			goto fail;
		*fmt++ = '\0';
		if (*marker == '\0' || *modname == '\0')
			goto fail;

		mod = FUNC2(modname);
		if (!mod) {
			mod = FUNC6(modname);
			mod->skip = 1;
		}
		if (FUNC5(modname)) {
			have_vmlinux = 1;
			mod->skip = 0;
		}

		if (!mod->skip)
			FUNC0(mod, marker, fmt);
	}
	FUNC7(file, size);
	return;
fail:
	FUNC1("parse error in markers list file\n");
}