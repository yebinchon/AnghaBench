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
struct htb_sched {int dummy; } ;
struct htb_class {int cmode; scalar_t__ prio_activity; } ;
typedef  enum htb_cmode { ____Placeholder_htb_cmode } htb_cmode ;

/* Variables and functions */
 scalar_t__ HTB_CANT_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct htb_sched*,struct htb_class*) ; 
 int FUNC1 (struct htb_class*,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct htb_sched*,struct htb_class*) ; 

__attribute__((used)) static void
FUNC3(struct htb_sched *q, struct htb_class *cl, long *diff)
{
	enum htb_cmode new_mode = FUNC1(cl, diff);

	if (new_mode == cl->cmode)
		return;

	if (cl->prio_activity) {	/* not necessary: speed optimization */
		if (cl->cmode != HTB_CANT_SEND)
			FUNC2(q, cl);
		cl->cmode = new_mode;
		if (new_mode != HTB_CANT_SEND)
			FUNC0(q, cl);
	} else
		cl->cmode = new_mode;
}