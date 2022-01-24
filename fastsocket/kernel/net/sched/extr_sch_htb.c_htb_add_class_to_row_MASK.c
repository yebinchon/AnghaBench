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
struct htb_sched {int* row_mask; scalar_t__* row; } ;
struct htb_class {size_t level; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct htb_class*,int) ; 

__attribute__((used)) static inline void FUNC2(struct htb_sched *q,
					struct htb_class *cl, int mask)
{
	q->row_mask[cl->level] |= mask;
	while (mask) {
		int prio = FUNC0(~mask);
		mask &= ~(1 << prio);
		FUNC1(q->row[cl->level] + prio, cl, prio);
	}
}