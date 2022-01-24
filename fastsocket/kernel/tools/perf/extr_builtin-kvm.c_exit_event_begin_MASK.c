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
struct perf_sample {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct event_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_evsel*,struct perf_sample*,struct event_key*) ; 
 scalar_t__ FUNC1 (struct perf_evsel*) ; 

__attribute__((used)) static bool FUNC2(struct perf_evsel *evsel,
			     struct perf_sample *sample, struct event_key *key)
{
	if (FUNC1(evsel)) {
		FUNC0(evsel, sample, key);
		return true;
	}

	return false;
}