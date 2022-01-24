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
struct symbol {int dummy; } ;
struct menu {TYPE_1__* prompt; void* data; struct symbol* sym; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ERRDISPLAYTOOSMALL ; 
 int KEY_ESC ; 
 int /*<<< orphan*/  P_MENU ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct menu*) ; 
 int /*<<< orphan*/  child_count ; 
 int /*<<< orphan*/  FUNC2 (struct menu*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct menu*) ; 
 struct menu* current_menu ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*,char*,struct menu*,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct menu* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 scalar_t__ FUNC14 () ; 
 char* mconf_readme ; 
 char* FUNC15 (struct menu*) ; 
 char* menu_instructions ; 
 int /*<<< orphan*/  mod ; 
 int /*<<< orphan*/  no ; 
 struct menu rootmenu ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  setmod_text ; 
 int /*<<< orphan*/  FUNC17 (struct menu*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  single_menu_mode ; 
 int /*<<< orphan*/  FUNC20 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC21 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC22 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct symbol*) ; 
 int /*<<< orphan*/  yes ; 

__attribute__((used)) static void FUNC24(struct menu *menu)
{
	struct menu *submenu;
	const char *prompt = FUNC15(menu);
	struct symbol *sym;
	struct menu *active_menu = NULL;
	int res;
	int s_scroll = 0;

	while (1) {
		FUNC12();
		current_menu = menu;
		FUNC1(menu);
		if (!child_count)
			break;
		if (menu == &rootmenu) {
			FUNC11("--- ");
			FUNC13(':');
			FUNC11(FUNC0("    Load an Alternate Configuration File"));
			FUNC13('L');
			FUNC11(FUNC0("    Save an Alternate Configuration File"));
			FUNC13('S');
		}
		FUNC6();
		res = FUNC7(prompt ? FUNC0(prompt) : FUNC0("Main Menu"),
				  FUNC0(menu_instructions),
				  active_menu, &s_scroll);
		if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
			break;
		if (!FUNC8())
			continue;
		if (!FUNC14())
			continue;

		submenu = FUNC9();
		active_menu = FUNC9();
		if (submenu)
			sym = submenu->sym;
		else
			sym = NULL;

		switch (res) {
		case 0:
			switch (FUNC14()) {
			case 'm':
				if (single_menu_mode)
					submenu->data = (void *) (long) !submenu->data;
				else
					FUNC24(submenu);
				break;
			case 't':
				if (FUNC21(sym) && FUNC20(sym) == yes)
					FUNC2(submenu);
				else if (submenu->prompt->type == P_MENU)
					FUNC24(submenu);
				break;
			case 's':
				FUNC5(submenu);
				break;
			case 'L':
				FUNC3();
				break;
			case 'S':
				FUNC4();
				break;
			}
			break;
		case 2:
			if (sym)
				FUNC17(submenu);
			else
				FUNC18(FUNC0("README"), FUNC0(mconf_readme));
			break;
		case 3:
			if (FUNC10('t')) {
				if (FUNC22(sym, yes))
					break;
				if (FUNC22(sym, mod))
					FUNC19(NULL, setmod_text, 6, 74);
			}
			break;
		case 4:
			if (FUNC10('t'))
				FUNC22(sym, no);
			break;
		case 5:
			if (FUNC10('t'))
				FUNC22(sym, mod);
			break;
		case 6:
			if (FUNC10('t'))
				FUNC23(sym);
			else if (FUNC10('m'))
				FUNC24(submenu);
			break;
		case 7:
			FUNC16();
			break;
		}
	}
}