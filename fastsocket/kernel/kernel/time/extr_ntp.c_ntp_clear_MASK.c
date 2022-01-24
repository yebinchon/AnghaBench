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
 void* NTP_PHASE_LIMIT ; 
 int /*<<< orphan*/  STA_UNSYNC ; 
 int /*<<< orphan*/  ntp_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tick_length ; 
 int /*<<< orphan*/  tick_length_base ; 
 scalar_t__ time_adjust ; 
 void* time_esterror ; 
 void* time_maxerror ; 
 scalar_t__ time_offset ; 
 int /*<<< orphan*/  time_status ; 

void FUNC3(void)
{
	unsigned long flags;

	FUNC1(&ntp_lock, flags);

	time_adjust	= 0;		/* stop active adjtime() */
	time_status	|= STA_UNSYNC;
	time_maxerror	= NTP_PHASE_LIMIT;
	time_esterror	= NTP_PHASE_LIMIT;

	FUNC0();

	tick_length	= tick_length_base;
	time_offset	= 0;
	FUNC2(&ntp_lock, flags);

}