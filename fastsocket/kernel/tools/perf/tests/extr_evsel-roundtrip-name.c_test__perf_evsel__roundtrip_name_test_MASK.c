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
 int /*<<< orphan*/  perf_evsel__hw_names ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  perf_evsel__sw_names ; 

int FUNC2(void)
{
	int err = 0, ret = 0;

	err = FUNC0(perf_evsel__hw_names);
	if (err)
		ret = err;

	err = FUNC0(perf_evsel__sw_names);
	if (err)
		ret = err;

	err = FUNC1();
	if (err)
		ret = err;

	return ret;
}