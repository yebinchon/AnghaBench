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
struct symbol {int flags; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct menu {struct menu* next; struct menu* parent; struct menu* list; struct symbol* sym; } ;
struct TYPE_2__ {struct menu* list; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int SYMBOL_CHOICE ; 
 int SYMBOL_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct symbol*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC10 (char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  kconfig_printer_cb ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 char* FUNC13 (struct menu*) ; 
 int /*<<< orphan*/  FUNC14 (struct menu*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 TYPE_1__ rootmenu ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 char* FUNC20 (char const*,char) ; 
 int /*<<< orphan*/  FUNC21 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

int FUNC24(const char *name)
{
	FILE *out;
	struct symbol *sym;
	struct menu *menu;
	const char *basename;
	const char *str;
	char dirname[PATH_MAX+1], tmpname[PATH_MAX+1], newname[PATH_MAX+1];
	char *env;

	dirname[0] = 0;
	if (name && name[0]) {
		struct stat st;
		char *slash;

		if (!FUNC17(name, &st) && FUNC0(st.st_mode)) {
			FUNC19(dirname, name);
			FUNC18(dirname, "/");
			basename = FUNC3();
		} else if ((slash = FUNC20(name, '/'))) {
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

	FUNC16(newname, "%s%s", dirname, basename);
	env = FUNC10("KCONFIG_OVERWRITECONFIG");
	if (!env || !*env) {
		FUNC16(tmpname, "%s.tmpconfig.%d", dirname, (int)FUNC11());
		out = FUNC8(tmpname, "w");
	} else {
		*tmpname = 0;
		out = FUNC8(newname, "w");
	}
	if (!out)
		return 1;

	FUNC5(out, &kconfig_printer_cb, NULL);

	if (!FUNC2())
		FUNC22();

	menu = rootmenu.list;
	while (menu) {
		sym = menu->sym;
		if (!sym) {
			if (!FUNC14(menu))
				goto next;
			str = FUNC13(menu);
			FUNC9(out, "\n"
				     "#\n"
				     "# %s\n"
				     "#\n", str);
		} else if (!(sym->flags & SYMBOL_CHOICE)) {
			FUNC21(sym);
			if (!(sym->flags & SYMBOL_WRITE))
				goto next;
			sym->flags &= ~SYMBOL_WRITE;

			FUNC6(out, sym, &kconfig_printer_cb, NULL);
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
	FUNC7(out);

	if (*tmpname) {
		FUNC18(dirname, basename);
		FUNC18(dirname, ".old");
		FUNC15(newname, dirname);
		if (FUNC15(tmpname, newname))
			return 1;
	}

	FUNC4(FUNC1("configuration written to %s"), newname);

	FUNC23(0);

	return 0;
}