#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_3__ {scalar_t__ tri; } ;
struct symbol {int flags; int type; char* name; TYPE_1__ curr; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct menu {struct menu* next; struct menu* parent; struct menu* list; struct symbol* sym; } ;
struct TYPE_4__ {struct menu* list; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SYMBOL_CHOICE ; 
 int SYMBOL_WRITE ; 
#define  S_BOOLEAN 135 
#define  S_HEX 134 
#define  S_INT 133 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  S_STRING 132 
#define  S_TRISTATE 131 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 char* FUNC13 (struct menu*) ; 
 int /*<<< orphan*/  FUNC14 (struct menu*) ; 
#define  mod 130 
 struct symbol* modules_sym ; 
#define  no 129 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 TYPE_2__ rootmenu ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*) ; 
 int FUNC21 (char const*,char*) ; 
 char* FUNC22 (char const*,char) ; 
 int /*<<< orphan*/  FUNC23 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 char* FUNC25 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC26 (struct symbol*) ; 
 struct symbol* FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
#define  yes 128 

int FUNC30(const char *name)
{
	FILE *out;
	struct symbol *sym;
	struct menu *menu;
	const char *basename;
	char dirname[128], tmpname[128], newname[128];
	int type, l;
	const char *str;
	time_t now;
	int use_timestamp = 1;
	char *env;

	dirname[0] = 0;
	if (name && name[0]) {
		struct stat st;
		char *slash;

		if (!FUNC18(name, &st) && FUNC0(st.st_mode)) {
			FUNC20(dirname, name);
			FUNC19(dirname, "/");
			basename = FUNC3();
		} else if ((slash = FUNC22(name, '/'))) {
			int size = slash - name + 1;
			FUNC12(dirname, name, size);
			dirname[size] = 0;
			if (slash[1])
				basename = slash + 1;
			else
				basename = FUNC3();
		} else
			basename = name;
	} else
		basename = FUNC3();

	FUNC17(newname, "%s%s", dirname, basename);
	env = FUNC10("KCONFIG_OVERWRITECONFIG");
	if (!env || !*env) {
		FUNC17(tmpname, "%s.tmpconfig.%d", dirname, (int)FUNC11());
		out = FUNC6(tmpname, "w");
	} else {
		*tmpname = 0;
		out = FUNC6(newname, "w");
	}
	if (!out)
		return 1;

	sym = FUNC27("KERNELVERSION", 0);
	FUNC23(sym);
	FUNC29(&now);
	env = FUNC10("KCONFIG_NOTIMESTAMP");
	if (env && *env)
		use_timestamp = 0;

	FUNC7(out, FUNC1("#\n"
		       "# Automatically generated make config: don't edit\n"
		       "# Linux kernel version: %s\n"
		       "%s%s"
		       "#\n"),
		     FUNC25(sym),
		     use_timestamp ? "# " : "",
		     use_timestamp ? FUNC4(&now) : "");

	if (!FUNC2())
		FUNC24();

	menu = rootmenu.list;
	while (menu) {
		sym = menu->sym;
		if (!sym) {
			if (!FUNC14(menu))
				goto next;
			str = FUNC13(menu);
			FUNC7(out, "\n"
				     "#\n"
				     "# %s\n"
				     "#\n", str);
		} else if (!(sym->flags & SYMBOL_CHOICE)) {
			FUNC23(sym);
			if (!(sym->flags & SYMBOL_WRITE))
				goto next;
			sym->flags &= ~SYMBOL_WRITE;
			type = sym->type;
			if (type == S_TRISTATE) {
				FUNC23(modules_sym);
				if (modules_sym->curr.tri == no)
					type = S_BOOLEAN;
			}
			switch (type) {
			case S_BOOLEAN:
			case S_TRISTATE:
				switch (FUNC26(sym)) {
				case no:
					FUNC7(out, "# CONFIG_%s is not set\n", sym->name);
					break;
				case mod:
					FUNC7(out, "CONFIG_%s=m\n", sym->name);
					break;
				case yes:
					FUNC7(out, "CONFIG_%s=y\n", sym->name);
					break;
				}
				break;
			case S_STRING:
				str = FUNC25(sym);
				FUNC7(out, "CONFIG_%s=\"", sym->name);
				while (1) {
					l = FUNC21(str, "\"\\");
					if (l) {
						FUNC9(str, l, 1, out);
						str += l;
					}
					if (!*str)
						break;
					FUNC7(out, "\\%c", str++);
				}
				FUNC8("\"\n", out);
				break;
			case S_HEX:
				str = FUNC25(sym);
				if (str[0] != '0' || (str[1] != 'x' && str[1] != 'X')) {
					FUNC7(out, "CONFIG_%s=%s\n", sym->name, str);
					break;
				}
			case S_INT:
				str = FUNC25(sym);
				FUNC7(out, "CONFIG_%s=%s\n", sym->name, str);
				break;
			}
		}

	next:
		if (menu->list) {
			menu = menu->list;
			continue;
		}
		if (menu->next)
			menu = menu->next;
		else while ((menu = menu->parent)) {
			if (menu->next) {
				menu = menu->next;
				break;
			}
		}
	}
	FUNC5(out);

	if (*tmpname) {
		FUNC19(dirname, basename);
		FUNC19(dirname, ".old");
		FUNC16(newname, dirname);
		if (FUNC16(tmpname, newname))
			return 1;
	}

	FUNC15(FUNC1("#\n"
		 "# configuration written to %s\n"
		 "#\n"), newname);

	FUNC28(0);

	return 0;
}