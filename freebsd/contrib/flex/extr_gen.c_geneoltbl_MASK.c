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
 scalar_t__ gentables ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int num_rules ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__* rule_has_nl ; 

__attribute__((used)) static void FUNC5 (void)
{
	int     i;

	FUNC4 ("m4_ifdef( [[M4_YY_USE_LINENO]],[[");
	FUNC4 ("/* Table of booleans, true if rule could match eol. */");
	FUNC3 (FUNC0 (), "yy_rule_can_match_eol",
		     num_rules + 1);

	if (gentables) {
		for (i = 1; i <= num_rules; i++) {
			FUNC2 ("%d, ", rule_has_nl[i] ? 1 : 0);
			/* format nicely, 20 numbers per line. */
			if ((i % 20) == 19)
				FUNC1 ("\n    ");
		}
		FUNC1 ("    };\n");
	}
	FUNC4 ("]])");
}