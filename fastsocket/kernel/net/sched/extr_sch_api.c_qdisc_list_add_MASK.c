#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Qdisc {scalar_t__ parent; int flags; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {TYPE_1__* qdisc; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int TCQ_F_INGRESS ; 
 scalar_t__ TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *q)
{
	if ((q->parent != TC_H_ROOT) && !(q->flags & TCQ_F_INGRESS))
		FUNC0(&q->list, &FUNC1(q)->qdisc->list);
}