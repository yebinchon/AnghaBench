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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct qdisc_watchdog {struct Qdisc* qdisc; TYPE_1__ timer; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qdisc_watchdog ; 

void FUNC1(struct qdisc_watchdog *wd, struct Qdisc *qdisc)
{
	FUNC0(&wd->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	wd->timer.function = qdisc_watchdog;
	wd->qdisc = qdisc;
}