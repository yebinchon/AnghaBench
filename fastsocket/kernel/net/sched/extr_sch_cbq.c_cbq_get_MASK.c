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
typedef  int /*<<< orphan*/  u32 ;
struct cbq_sched_data {int dummy; } ;
struct cbq_class {int /*<<< orphan*/  refcnt; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct cbq_class* FUNC0 (struct cbq_sched_data*,int /*<<< orphan*/ ) ; 
 struct cbq_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static unsigned long FUNC2(struct Qdisc *sch, u32 classid)
{
	struct cbq_sched_data *q = FUNC1(sch);
	struct cbq_class *cl = FUNC0(q, classid);

	if (cl) {
		cl->refcnt++;
		return (unsigned long)cl;
	}
	return 0;
}