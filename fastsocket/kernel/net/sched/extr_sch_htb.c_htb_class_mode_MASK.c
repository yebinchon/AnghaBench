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
struct htb_class {long ctokens; long tokens; } ;
typedef  enum htb_cmode { ____Placeholder_htb_cmode } htb_cmode ;

/* Variables and functions */
 int HTB_CANT_SEND ; 
 int HTB_CAN_SEND ; 
 int HTB_MAY_BORROW ; 
 long FUNC0 (struct htb_class*) ; 
 long FUNC1 (struct htb_class*) ; 

__attribute__((used)) static inline enum htb_cmode
FUNC2(struct htb_class *cl, long *diff)
{
	long toks;

	if ((toks = (cl->ctokens + *diff)) < FUNC1(cl)) {
		*diff = -toks;
		return HTB_CANT_SEND;
	}

	if ((toks = (cl->tokens + *diff)) >= FUNC0(cl))
		return HTB_CAN_SEND;

	*diff = -toks;
	return HTB_MAY_BORROW;
}