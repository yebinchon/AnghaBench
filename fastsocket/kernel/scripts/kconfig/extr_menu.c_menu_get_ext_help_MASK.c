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
struct symbol {scalar_t__ name; } ;
struct menu {struct symbol* sym; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gstr*,struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct menu*) ; 
 scalar_t__ FUNC3 (struct menu*) ; 
 char* nohelp_text ; 
 int /*<<< orphan*/  FUNC4 (struct gstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gstr*,char*,scalar_t__) ; 

void FUNC6(struct menu *menu, struct gstr *help)
{
	struct symbol *sym = menu->sym;

	if (FUNC3(menu)) {
		if (sym->name) {
			FUNC5(help, "CONFIG_%s:\n\n", sym->name);
			FUNC4(help, FUNC0(FUNC2(menu)));
			FUNC4(help, "\n");
		}
	} else {
		FUNC4(help, nohelp_text);
	}
	if (sym)
		FUNC1(help, sym);
}