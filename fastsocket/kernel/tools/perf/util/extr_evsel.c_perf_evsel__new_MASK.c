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
struct perf_evsel {int dummy; } ;
struct perf_event_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_evsel*,struct perf_event_attr*,int) ; 
 struct perf_evsel* FUNC1 (int) ; 

struct perf_evsel *FUNC2(struct perf_event_attr *attr, int idx)
{
	struct perf_evsel *evsel = FUNC1(sizeof(*evsel));

	if (evsel != NULL)
		FUNC0(evsel, attr, idx);

	return evsel;
}