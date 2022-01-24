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
struct Qdisc {scalar_t__ parent; int flags; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int TCQ_F_INGRESS ; 
 scalar_t__ TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct Qdisc *q)
{
	if ((q->parent != TC_H_ROOT) && !(q->flags & TCQ_F_INGRESS))
		FUNC0(&q->list);
}