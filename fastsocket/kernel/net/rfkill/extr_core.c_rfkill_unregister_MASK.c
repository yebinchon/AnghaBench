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
struct rfkill {int registered; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; int /*<<< orphan*/  sync_work; int /*<<< orphan*/  uevent_work; int /*<<< orphan*/  poll_work; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RFKILL_OP_DEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfkill_global_mutex ; 
 int /*<<< orphan*/  FUNC7 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfkill*,int /*<<< orphan*/ ) ; 

void FUNC9(struct rfkill *rfkill)
{
	FUNC0(!rfkill);

	if (rfkill->ops->poll)
		FUNC1(&rfkill->poll_work);

	FUNC2(&rfkill->uevent_work);
	FUNC2(&rfkill->sync_work);

	rfkill->registered = false;

	FUNC3(&rfkill->dev);

	FUNC5(&rfkill_global_mutex);
	FUNC8(rfkill, RFKILL_OP_DEL);
	FUNC4(&rfkill->node);
	FUNC6(&rfkill_global_mutex);

	FUNC7(rfkill);
}