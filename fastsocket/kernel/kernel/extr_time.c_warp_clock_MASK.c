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
struct timespec {int tv_sec; } ;
struct TYPE_2__ {int tz_minuteswest; } ;

/* Variables and functions */
 struct timespec FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 
 int persistent_clock_is_local ; 
 TYPE_1__ sys_tz ; 

__attribute__((used)) static inline void FUNC2(void)
{
	struct timespec adjust;

	adjust = FUNC0();
	if (sys_tz.tz_minuteswest != 0)
		persistent_clock_is_local = 1;
	adjust.tv_sec += sys_tz.tz_minuteswest * 60;
	FUNC1(&adjust);
}