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
 int INT_CONF ; 
 int INT_FIG_ ; 
 int INT_NFIG ; 
 int INT_ONFI ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(char *map, size_t len)
{
	int *end = (int *) (map + len);
	/* start at +1, so that p can never be < map */
	int *m   = (int *) map + 1;
	char *p, *q;

	for (; m < end; m++) {
		if (*m == INT_CONF) { p = (char *) m  ; goto conf; }
		if (*m == INT_ONFI) { p = (char *) m-1; goto conf; }
		if (*m == INT_NFIG) { p = (char *) m-2; goto conf; }
		if (*m == INT_FIG_) { p = (char *) m-3; goto conf; }
		continue;
	conf:
		if (p > map + len - 7)
			continue;
		if (FUNC1(p, "CONFIG_", 7))
			continue;
		for (q = p + 7; q < map + len; q++) {
			if (!(FUNC0(*q) || *q == '_'))
				goto found;
		}
		continue;

	found:
		if (!FUNC1(q - 7, "_MODULE", 7))
			q -= 7;
		if( (q-p-7) < 0 )
			continue;
		FUNC2(p+7, q-p-7);
	}
}