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
struct symbol {char* name; } ;
struct menu {struct menu* next; struct menu* list; struct symbol* sym; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conf_cnt ; 
 scalar_t__ dont_ask ; 
 scalar_t__ dont_ask_dont_tell ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ input_mode ; 
 int /*<<< orphan*/  FUNC3 (struct menu*) ; 
 int /*<<< orphan*/  FUNC4 (struct menu*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  return_value ; 
 int /*<<< orphan*/  rootEntry ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC7 (struct symbol*) ; 
 scalar_t__ FUNC8 (struct symbol*) ; 
 scalar_t__ FUNC9 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC10 (struct symbol*) ; 
 scalar_t__ yes ; 

__attribute__((used)) static void FUNC11(struct menu *menu)
{
	struct symbol *sym;
	struct menu *child;

	if (!FUNC4(menu))
		return;

	sym = menu->sym;
	if (sym && !FUNC7(sym)) {
		if (FUNC8(sym) ||
		    (FUNC9(sym) && FUNC6(sym) == yes)) {
			if (input_mode == dont_ask ||
			    input_mode == dont_ask_dont_tell) {
				if (input_mode == dont_ask &&
				    sym->name && !FUNC10(sym)) {
					FUNC2(stderr,"CONFIG_%s\n",sym->name);
					++return_value;
				}
			} else {
			if (!conf_cnt++)
				FUNC5(FUNC0("*\n* Restart config...\n*\n"));
			rootEntry = FUNC3(menu);
			FUNC1(rootEntry);
		}
	}
	}

	for (child = menu->list; child; child = child->next)
		FUNC11(child);
}