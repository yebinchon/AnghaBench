#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* q_forw; struct TYPE_7__* q_back; } ;
typedef  TYPE_1__ line_t ;

/* Variables and functions */
 int ERR ; 
 long FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  UMOV ; 
 int /*<<< orphan*/  addr_last ; 
 long current_addr ; 
 int first_addr ; 
 TYPE_1__* FUNC4 (long) ; 
 scalar_t__ isglobal ; 
 int modified ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,long,long) ; 
 long second_addr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 

int
FUNC7(long addr)
{
	line_t *b1, *a1, *b2, *a2;
	long n = FUNC0(second_addr, addr_last);
	long p = first_addr - 1;
	int done = (addr == first_addr - 1 || addr == second_addr);

	FUNC3();
	if (done) {
		a2 = FUNC4(n);
		b2 = FUNC4(p);
		current_addr = second_addr;
	} else if (FUNC5(UMOV, p, n) == NULL ||
	    FUNC5(UMOV, addr, FUNC0(addr, addr_last)) == NULL) {
		FUNC2();
		return ERR;
	} else {
		a1 = FUNC4(n);
		if (addr < first_addr) {
			b1 = FUNC4(p);
			b2 = FUNC4(addr);
					/* this get_addressed_line_node last! */
		} else {
			b2 = FUNC4(addr);
			b1 = FUNC4(p);
					/* this get_addressed_line_node last! */
		}
		a2 = b2->q_forw;
		FUNC1(b2, b1->q_forw);
		FUNC1(a1->q_back, a2);
		FUNC1(b1, a1);
		current_addr = addr + ((addr < first_addr) ?
		    second_addr - first_addr + 1 : 0);
	}
	if (isglobal)
		FUNC6(b2->q_forw, a2);
	modified = 1;
	FUNC2();
	return 0;
}