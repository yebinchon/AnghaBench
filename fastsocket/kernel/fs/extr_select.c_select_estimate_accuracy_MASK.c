#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_3__ {unsigned long timer_slack_ns; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct timespec*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct timespec FUNC3 (struct timespec,struct timespec) ; 

long FUNC4(struct timespec *tv)
{
	unsigned long ret;
	struct timespec now;

	/*
	 * Realtime tasks get a slack of 0 for obvious reasons.
	 */

	if (FUNC2(current))
		return 0;

	FUNC1(&now);
	now = FUNC3(*tv, now);
	ret = FUNC0(&now);
	if (ret < current->timer_slack_ns)
		return current->timer_slack_ns;
	return ret;
}