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
struct readelf {int /*<<< orphan*/  dop; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; int /*<<< orphan*/ * ln; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_DEFAULT_OPTIONS ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 TYPE_1__* dwarf_op ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static void
FUNC5(struct readelf *re, const char *op)
{
	char *p, *token, *bp;
	int i;

	if (op == NULL) {
		re->dop |= DW_DEFAULT_OPTIONS;
		return;
	}

	if ((p = FUNC3(op)) == NULL)
		FUNC0(EXIT_FAILURE, "strdup failed");
	bp = p;

	while ((token = FUNC4(&p, ",")) != NULL) {
		for (i = 0; dwarf_op[i].ln != NULL; i++) {
			if (!FUNC2(token, dwarf_op[i].ln)) {
				re->dop |= dwarf_op[i].value;
				break;
			}
		}
	}

	FUNC1(bp);
}