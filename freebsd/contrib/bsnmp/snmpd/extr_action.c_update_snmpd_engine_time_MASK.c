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
typedef  unsigned long long uint64_t ;
struct TYPE_2__ {unsigned long long engine_time; } ;

/* Variables and functions */
 unsigned long long INT32_MAX ; 
 unsigned long long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ snmpd_engine ; 
 unsigned long long start_tick ; 

void
FUNC2(void)
{
	uint64_t etime;

	etime = (FUNC0() - start_tick) / 100ULL;
	if (etime < INT32_MAX)
		snmpd_engine.engine_time = etime;
	else {
		start_tick = FUNC0();
		(void)FUNC1();
		snmpd_engine.engine_time = start_tick;
	}
}