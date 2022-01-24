#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; struct TYPE_4__* q_forw; } ;
typedef  TYPE_1__ line_t ;

/* Variables and functions */
 int ERR ; 
 long FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  UADD ; 
 int /*<<< orphan*/  addr_last ; 
 long current_addr ; 
 scalar_t__ FUNC4 (long,long) ; 
 TYPE_1__* FUNC5 (long) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int modified ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 

int
FUNC10(long from, long to)
{
	static char *buf = NULL;
	static int n;

	char *s;
	int size = 0;
	line_t *bp, *ep;

	ep = FUNC5(FUNC0(to, addr_last));
	bp = FUNC5(from);
	for (; bp != ep; bp = bp->q_forw) {
		if ((s = FUNC6(bp)) == NULL)
			return ERR;
		FUNC1(buf, n, size + bp->len, ERR);
		FUNC7(buf + size, s, bp->len);
		size += bp->len;
	}
	FUNC1(buf, n, size + 2, ERR);
	FUNC7(buf + size, "\n", 2);
	if (FUNC4(from, to) < 0)
		return ERR;
	current_addr = from - 1;
	FUNC3();
	if (FUNC9(buf) == NULL ||
	    FUNC8(UADD, current_addr, current_addr) == NULL) {
		FUNC2();
		return ERR;
	}
	modified = 1;
	FUNC2();
	return 0;
}