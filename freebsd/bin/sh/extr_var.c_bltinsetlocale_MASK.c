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
struct TYPE_2__ {int count; int /*<<< orphan*/ * args; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  LC_ALL ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* cmdenviron ; 
 int /*<<< orphan*/ * locale_categories ; 
 char** locale_names ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{
	int act = 0;
	char *loc, *locdef;
	int i;

	if (cmdenviron) for (i = 0; i < cmdenviron->count; i++) {
		if (FUNC1(cmdenviron->args[i])) {
			act = 1;
			break;
		}
	}
	if (!act)
		return;
	loc = FUNC0("LC_ALL", 0);
	INTOFF;
	if (loc != NULL) {
		FUNC2(LC_ALL, loc);
		INTON;
		FUNC3();
		return;
	}
	locdef = FUNC0("LANG", 0);
	for (i = 0; locale_names[i] != NULL; i++) {
		loc = FUNC0(locale_names[i], 0);
		if (loc == NULL)
			loc = locdef;
		if (loc != NULL)
			FUNC2(locale_categories[i], loc);
	}
	INTON;
	FUNC3();
}