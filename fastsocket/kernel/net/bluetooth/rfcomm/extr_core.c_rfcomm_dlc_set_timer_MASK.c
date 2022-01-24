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
struct rfcomm_dlc {int /*<<< orphan*/  timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 

__attribute__((used)) static void FUNC3(struct rfcomm_dlc *d, long timeout)
{
	FUNC0("dlc %p state %ld timeout %ld", d, d->state, timeout);

	if (!FUNC1(&d->timer, jiffies + timeout))
		FUNC2(d);
}