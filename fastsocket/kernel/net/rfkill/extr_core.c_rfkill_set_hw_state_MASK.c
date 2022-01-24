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
struct rfkill {int /*<<< orphan*/  uevent_work; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int FUNC0 (struct rfkill*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct rfkill *rfkill, bool blocked)
{
	bool ret, change;

	ret = FUNC0(rfkill, blocked, &change);

	if (!rfkill->registered)
		return ret;

	if (change)
		FUNC1(&rfkill->uevent_work);

	return ret;
}