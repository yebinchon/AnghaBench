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
struct bsdar {char* as; int as_cap; size_t as_sz; } ;

/* Variables and functions */
 int _INIT_AS_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct bsdar*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC5(struct bsdar *bsdar, const char *name)
{

	if (bsdar->as == NULL) {
		bsdar->as_cap = _INIT_AS_CAP;
		bsdar->as_sz = 0;
		if ((bsdar->as = FUNC1(bsdar->as_cap)) == NULL)
			FUNC0(bsdar, errno, "malloc failed");
	}

	/*
	 * The space required for holding one member name in the 'as'
	 * table includes: strlen(name) + (1 for '/') + (1 for '\n') +
	 * (possibly 1 for padding).
	 */
	while (bsdar->as_sz + FUNC3(name) + 3 > bsdar->as_cap) {
		bsdar->as_cap *= 2;
		bsdar->as = FUNC2(bsdar->as, bsdar->as_cap);
		if (bsdar->as == NULL)
			FUNC0(bsdar, errno, "realloc failed");
	}
	FUNC4(&bsdar->as[bsdar->as_sz], name, FUNC3(name));
	bsdar->as_sz += FUNC3(name);
	bsdar->as[bsdar->as_sz++] = '/';
	bsdar->as[bsdar->as_sz++] = '\n';
}