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
struct perf_event {int dummy; } ;

/* Variables and functions */
 int PERF_EF_START ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int) ; 

__attribute__((used)) static int FUNC1(struct perf_event *event, int flags)
{
	if (flags & PERF_EF_START)
		FUNC0(event, flags);

	return 0;
}