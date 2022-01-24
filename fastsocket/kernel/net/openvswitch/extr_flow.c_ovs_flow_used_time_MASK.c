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
typedef  int u64 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int MSEC_PER_SEC ; 
 int NSEC_PER_MSEC ; 
 scalar_t__ jiffies ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 

u64 FUNC2(unsigned long flow_jiffies)
{
	struct timespec cur_ts;
	u64 cur_ms, idle_ms;

	FUNC1(&cur_ts);
	idle_ms = FUNC0(jiffies - flow_jiffies);
	cur_ms = (u64)cur_ts.tv_sec * MSEC_PER_SEC +
		 cur_ts.tv_nsec / NSEC_PER_MSEC;

	return cur_ms - idle_ms;
}