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
struct irlap_cb {scalar_t__ state; int /*<<< orphan*/  media_busy_timer; } ;

/* Variables and functions */
 scalar_t__ LAP_NDM ; 
 int /*<<< orphan*/  MEDIA_BUSY_TIMER_EXPIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct irlap_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct irlap_cb *self)
{
	/* If timer is activated, kill it! */
	FUNC0(&self->media_busy_timer);

	/* If we are in NDM, there is a bunch of events in LAP that
	 * that be pending due to the media_busy condition, such as
	 * CONNECT_REQUEST and SEND_UI_FRAME. If we don't generate
	 * an event, they will wait forever...
	 * Jean II */
	if (self->state == LAP_NDM)
		FUNC1(self, MEDIA_BUSY_TIMER_EXPIRED, NULL, NULL);
}