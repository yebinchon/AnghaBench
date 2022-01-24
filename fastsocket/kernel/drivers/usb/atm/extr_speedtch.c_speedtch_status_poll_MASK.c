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
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct speedtch_instance_data {scalar_t__ poll_delay; int /*<<< orphan*/  usbatm; TYPE_1__ status_checker; } ;

/* Variables and functions */
 scalar_t__ MAX_POLL_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct speedtch_instance_data *instance = (void *)data;

	FUNC3(&instance->status_checker, 0);

	/* The following check is racy, but the race is harmless */
	if (instance->poll_delay < MAX_POLL_DELAY)
		FUNC1(&instance->status_checker.timer, jiffies + FUNC2(instance->poll_delay));
	else
		FUNC0(instance->usbatm, "Too many failures - disabling line status polling\n");
}