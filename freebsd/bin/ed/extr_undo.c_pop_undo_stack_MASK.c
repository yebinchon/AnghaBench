#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* q_back; struct TYPE_7__* q_forw; } ;
struct TYPE_6__ {int type; TYPE_4__* t; TYPE_4__* h; } ;

/* Variables and functions */
 int ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  UADD 131 
#define  UDEL 130 
#define  UMOV 129 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__) ; 
#define  VMOV 128 
 long addr_last ; 
 int /*<<< orphan*/  FUNC4 () ; 
 long current_addr ; 
 char* errmsg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ isglobal ; 
 int modified ; 
 int u_addr_last ; 
 int u_current_addr ; 
 long u_p ; 
 TYPE_1__* ustack ; 

int
FUNC6(void)
{
	long n;
	long o_current_addr = current_addr;
	long o_addr_last = addr_last;

	if (u_current_addr == -1 || u_addr_last == -1) {
		errmsg = "nothing to undo";
		return ERR;
	} else if (u_p)
		modified = 1;
	FUNC5(0);	/* this get_addressed_line_node last! */
	FUNC2();
	for (n = u_p; n-- > 0;) {
		switch(ustack[n].type) {
		case UADD:
			FUNC0(ustack[n].h->q_back, ustack[n].t->q_forw);
			break;
		case UDEL:
			FUNC0(ustack[n].h->q_back, ustack[n].h);
			FUNC0(ustack[n].t, ustack[n].t->q_forw);
			break;
		case UMOV:
		case VMOV:
			FUNC0(ustack[n - 1].h, ustack[n].h->q_forw);
			FUNC0(ustack[n].t->q_back, ustack[n - 1].t);
			FUNC0(ustack[n].h, ustack[n].t);
			n--;
			break;
		default:
			/*NOTREACHED*/
			;
		}
		ustack[n].type ^= 1;
	}
	/* reverse undo stack order */
	for (n = u_p; n-- > (u_p + 1)/ 2;)
		FUNC3(ustack[n], ustack[u_p - 1 - n]);
	if (isglobal)
		FUNC4();
	current_addr = u_current_addr, u_current_addr = o_current_addr;
	addr_last = u_addr_last, u_addr_last = o_addr_last;
	FUNC1();
	return 0;
}