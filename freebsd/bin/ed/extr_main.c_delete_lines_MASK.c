#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  q_forw; } ;
typedef  TYPE_1__ line_t ;

/* Variables and functions */
 int ERR ; 
 long FUNC0 (long,long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  UDEL ; 
 long addr_last ; 
 long current_addr ; 
 TYPE_1__* FUNC4 (long) ; 
 scalar_t__ isglobal ; 
 int modified ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int
FUNC7(long from, long to)
{
	line_t *n, *p;

	FUNC3();
	if (FUNC5(UDEL, from, to) == NULL) {
		FUNC2();
		return ERR;
	}
	n = FUNC4(FUNC0(to, addr_last));
	p = FUNC4(from - 1);
					/* this get_addressed_line_node last! */
	if (isglobal)
		FUNC6(p->q_forw, n);
	FUNC1(p, n);
	addr_last -= to - from + 1;
	current_addr = from - 1;
	modified = 1;
	FUNC2();
	return 0;
}