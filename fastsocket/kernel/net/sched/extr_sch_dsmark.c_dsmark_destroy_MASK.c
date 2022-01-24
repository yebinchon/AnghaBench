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
struct dsmark_qdisc_data {int /*<<< orphan*/  mask; int /*<<< orphan*/  q; int /*<<< orphan*/  filter_list; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct Qdisc*,struct dsmark_qdisc_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dsmark_qdisc_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch)
{
	struct dsmark_qdisc_data *p = FUNC3(sch);

	FUNC1("dsmark_destroy(sch %p,[qdisc %p])\n", sch, p);

	FUNC4(&p->filter_list);
	FUNC2(p->q);
	FUNC0(p->mask);
}