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
struct TYPE_2__ {int type; int config; scalar_t__ config1; scalar_t__ config2; int exclude_user; int exclude_kernel; int exclude_hv; int precise_ip; scalar_t__ sample_type; int sample_period; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int nr_entries; } ;

/* Variables and functions */
 scalar_t__ PERF_TP_SAMPLE_TYPE ; 
 int PERF_TYPE_RAW ; 
 int PERF_TYPE_TRACEPOINT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct perf_evsel* FUNC1 (struct perf_evlist*) ; 
 struct perf_evsel* FUNC2 (struct perf_evsel*) ; 

__attribute__((used)) static int FUNC3(struct perf_evlist *evlist)
{
	struct perf_evsel *evsel = FUNC1(evlist);

	FUNC0("wrong number of entries", 3 == evlist->nr_entries);

	/* r1 */
	FUNC0("wrong type", PERF_TYPE_RAW == evsel->attr.type);
	FUNC0("wrong config", 1 == evsel->attr.config);
	FUNC0("wrong config1", 0 == evsel->attr.config1);
	FUNC0("wrong config2", 0 == evsel->attr.config2);
	FUNC0("wrong exclude_user", !evsel->attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->attr.exclude_kernel);
	FUNC0("wrong exclude_hv", !evsel->attr.exclude_hv);
	FUNC0("wrong precise_ip", !evsel->attr.precise_ip);

	/* syscalls:sys_enter_open:k */
	evsel = FUNC2(evsel);
	FUNC0("wrong type", PERF_TYPE_TRACEPOINT == evsel->attr.type);
	FUNC0("wrong sample_type",
		PERF_TP_SAMPLE_TYPE == evsel->attr.sample_type);
	FUNC0("wrong sample_period", 1 == evsel->attr.sample_period);
	FUNC0("wrong exclude_user", evsel->attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->attr.exclude_hv);
	FUNC0("wrong precise_ip", !evsel->attr.precise_ip);

	/* 1:1:hp */
	evsel = FUNC2(evsel);
	FUNC0("wrong type", 1 == evsel->attr.type);
	FUNC0("wrong config", 1 == evsel->attr.config);
	FUNC0("wrong exclude_user", evsel->attr.exclude_user);
	FUNC0("wrong exclude_kernel", evsel->attr.exclude_kernel);
	FUNC0("wrong exclude_hv", !evsel->attr.exclude_hv);
	FUNC0("wrong precise_ip", evsel->attr.precise_ip);

	return 0;
}