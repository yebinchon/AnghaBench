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
struct sfq_sched_data {scalar_t__* ht; } ;
struct qdisc_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct Qdisc*,unsigned int,struct qdisc_walker*) ;} ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ SFQ_DEPTH ; 
 unsigned int SFQ_HASH_DIVISOR ; 
 struct sfq_sched_data* FUNC0 (struct Qdisc*) ; 
 scalar_t__ FUNC1 (struct Qdisc*,unsigned int,struct qdisc_walker*) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *sch, struct qdisc_walker *arg)
{
	struct sfq_sched_data *q = FUNC0(sch);
	unsigned int i;

	if (arg->stop)
		return;

	for (i = 0; i < SFQ_HASH_DIVISOR; i++) {
		if (q->ht[i] == SFQ_DEPTH ||
		    arg->count < arg->skip) {
			arg->count++;
			continue;
		}
		if (arg->fn(sch, i + 1, arg) < 0) {
			arg->stop = 1;
			break;
		}
		arg->count++;
	}
}