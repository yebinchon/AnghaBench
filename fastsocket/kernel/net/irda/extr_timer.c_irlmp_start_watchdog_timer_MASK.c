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
struct lsap_cb {int /*<<< orphan*/  watchdog_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irlmp_watchdog_timer_expired ; 

void FUNC1(struct lsap_cb *self, int timeout)
{
	FUNC0(&self->watchdog_timer, timeout, (void *) self,
			 irlmp_watchdog_timer_expired);
}