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
struct elfcopy {char* as; int as_cap; size_t as_sz; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int _INIT_AS_CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC5(struct elfcopy *ecp, const char *name)
{

	if (ecp->as == NULL) {
		ecp->as_cap = _INIT_AS_CAP;
		ecp->as_sz = 0;
		if ((ecp->as = FUNC1(ecp->as_cap)) == NULL)
			FUNC0(EXIT_FAILURE, "malloc failed");
	}

	/*
	 * The space required for holding one member name in as table includes:
	 * strlen(name) + (1 for '/') + (1 for '\n') + (possibly 1 for padding).
	 */
	while (ecp->as_sz + FUNC3(name) + 3 > ecp->as_cap) {
		ecp->as_cap *= 2;
		ecp->as = FUNC2(ecp->as, ecp->as_cap);
		if (ecp->as == NULL)
			FUNC0(EXIT_FAILURE, "realloc failed");
	}
	FUNC4(&ecp->as[ecp->as_sz], name, FUNC3(name));
	ecp->as_sz += FUNC3(name);
	ecp->as[ecp->as_sz++] = '/';
	ecp->as[ecp->as_sz++] = '\n';
}