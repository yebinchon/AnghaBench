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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  sort_order ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char const* const*,struct option const*) ; 

void FUNC6(const char * const usagestr[], const struct option *opts)
{
	char *tmp, *tok, *str = FUNC3(sort_order);

	for (tok = FUNC4(str, ", ", &tmp);
			tok; tok = FUNC4(NULL, ", ", &tmp)) {
		if (FUNC2(tok) < 0) {
			FUNC0("Unknown --sort key: `%s'", tok);
			FUNC5(usagestr, opts);
		}
	}

	FUNC1(str);
}