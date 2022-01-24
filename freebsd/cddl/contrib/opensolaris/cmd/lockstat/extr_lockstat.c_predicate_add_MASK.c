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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(char **pred, char *what, char *cmp, uintptr_t value)
{
	char *new;
	int len, newlen;

	if (what == NULL)
		return;

	if (*pred == NULL) {
		*pred = FUNC1(1);
		*pred[0] = '\0';
	}

	len = FUNC3(*pred);
	newlen = len + FUNC3(what) + 32 + FUNC3("( && )");
	new = FUNC1(newlen);

	if (*pred[0] != '\0') {
		if (cmp != NULL) {
			(void) FUNC2(new, "(%s) && (%s %s 0x%p)",
			    *pred, what, cmp, (void *)value);
		} else {
			(void) FUNC2(new, "(%s) && (%s)", *pred, what);
		}
	} else {
		if (cmp != NULL) {
			(void) FUNC2(new, "%s %s 0x%p",
			    what, cmp, (void *)value);
		} else {
			(void) FUNC2(new, "%s", what);
		}
	}

	FUNC0(*pred);
	*pred = new;
}