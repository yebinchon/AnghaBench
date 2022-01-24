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
 double MIN_GREEN ; 
 double MIN_RED ; 
 char* PERF_COLOR_GREEN ; 
 char* PERF_COLOR_NORMAL ; 
 char* PERF_COLOR_RED ; 

const char *FUNC0(double percent)
{
	const char *color = PERF_COLOR_NORMAL;

	/*
	 * We color high-overhead entries in red, mid-overhead
	 * entries in green - and keep the low overhead places
	 * normal:
	 */
	if (percent >= MIN_RED)
		color = PERF_COLOR_RED;
	else {
		if (percent > MIN_GREEN)
			color = PERF_COLOR_GREEN;
	}
	return color;
}