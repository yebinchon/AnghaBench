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
struct qfq_class {scalar_t__ refcnt; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct qfq_class*) ; 

__attribute__((used)) static void FUNC1(struct Qdisc *sch, unsigned long arg)
{
	struct qfq_class *cl = (struct qfq_class *)arg;

	if (--cl->refcnt == 0)
		FUNC0(sch, cl);
}