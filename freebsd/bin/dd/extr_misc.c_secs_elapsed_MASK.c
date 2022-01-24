#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;
struct TYPE_4__ {TYPE_1__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 TYPE_2__ st ; 

double
FUNC3(void)
{
	struct timespec end, ts_res;
	double secs, res;

	if (FUNC1(CLOCK_MONOTONIC, &end))
		FUNC2(1, "clock_gettime");
	if (FUNC0(CLOCK_MONOTONIC, &ts_res))
		FUNC2(1, "clock_getres");
	secs = (end.tv_sec - st.start.tv_sec) + \
	       (end.tv_nsec - st.start.tv_nsec) * 1e-9;
	res = ts_res.tv_sec + ts_res.tv_nsec * 1e-9;
	if (secs < res)
		secs = res;

	return (secs);
}