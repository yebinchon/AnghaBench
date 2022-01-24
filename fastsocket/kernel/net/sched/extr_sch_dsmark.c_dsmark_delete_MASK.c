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
struct dsmark_qdisc_data {int* mask; scalar_t__* value; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dsmark_qdisc_data*,unsigned long) ; 
 struct dsmark_qdisc_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC2(struct Qdisc *sch, unsigned long arg)
{
	struct dsmark_qdisc_data *p = FUNC1(sch);

	if (!FUNC0(p, arg))
		return -EINVAL;

	p->mask[arg-1] = 0xff;
	p->value[arg-1] = 0;

	return 0;
}