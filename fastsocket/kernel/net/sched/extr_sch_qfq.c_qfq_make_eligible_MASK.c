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
typedef  unsigned long u64 ;
struct qfq_sched {unsigned long V; } ;

/* Variables and functions */
 int /*<<< orphan*/  EB ; 
 int /*<<< orphan*/  ER ; 
 int /*<<< orphan*/  IB ; 
 int /*<<< orphan*/  IR ; 
 unsigned long QFQ_MIN_SLOT_SHIFT ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct qfq_sched*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qfq_sched *q, u64 old_V)
{
	unsigned long vslot = q->V >> QFQ_MIN_SLOT_SHIFT;
	unsigned long old_vslot = old_V >> QFQ_MIN_SLOT_SHIFT;

	if (vslot != old_vslot) {
		unsigned long mask = (1UL << FUNC0(vslot ^ old_vslot)) - 1;
		FUNC1(q, mask, IR, ER);
		FUNC1(q, mask, IB, EB);
	}
}