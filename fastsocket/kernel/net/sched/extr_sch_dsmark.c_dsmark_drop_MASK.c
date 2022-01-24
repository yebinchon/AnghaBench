#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dsmark_qdisc_data {TYPE_3__* q; } ;
struct TYPE_5__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_4__ {unsigned int (* drop ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct Qdisc*,struct dsmark_qdisc_data*) ; 
 struct dsmark_qdisc_data* FUNC1 (struct Qdisc*) ; 
 unsigned int FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static unsigned int FUNC3(struct Qdisc *sch)
{
	struct dsmark_qdisc_data *p = FUNC1(sch);
	unsigned int len;

	FUNC0("dsmark_reset(sch %p,[qdisc %p])\n", sch, p);

	if (p->q->ops->drop == NULL)
		return 0;

	len = p->q->ops->drop(p->q);
	if (len)
		sch->q.qlen--;

	return len;
}