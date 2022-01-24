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

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ softlockup_thresh ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(unsigned long touch_ts)
{
	unsigned long now = FUNC0(FUNC1());

	/* Warn about unreasonable delays: */
	if (FUNC2(now, touch_ts + softlockup_thresh))
		return now - touch_ts;

	return 0;
}