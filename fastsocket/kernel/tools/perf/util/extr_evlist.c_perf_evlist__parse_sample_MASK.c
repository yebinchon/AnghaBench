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
typedef  union perf_event {int dummy; } perf_event ;
struct perf_sample {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct perf_evlist {int dummy; } ;

/* Variables and functions */
 struct perf_evsel* FUNC0 (struct perf_evlist*) ; 
 int FUNC1 (struct perf_evsel*,union perf_event*,struct perf_sample*) ; 

int FUNC2(struct perf_evlist *evlist, union perf_event *event,
			      struct perf_sample *sample)
{
	struct perf_evsel *evsel = FUNC0(evlist);
	return FUNC1(evsel, event, sample);
}