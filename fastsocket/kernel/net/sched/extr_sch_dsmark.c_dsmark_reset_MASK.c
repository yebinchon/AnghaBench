#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dsmark_qdisc_data {int /*<<< orphan*/  q; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct Qdisc*,struct dsmark_qdisc_data*) ; 
 struct dsmark_qdisc_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct Qdisc *sch)
{
	struct dsmark_qdisc_data *p = FUNC1(sch);

	FUNC0("dsmark_reset(sch %p,[qdisc %p])\n", sch, p);
	FUNC2(p->q);
	sch->q.qlen = 0;
}