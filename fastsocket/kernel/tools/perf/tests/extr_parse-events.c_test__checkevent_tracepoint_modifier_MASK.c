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
struct TYPE_2__ {int exclude_user; int exclude_hv; int /*<<< orphan*/  precise_ip; int /*<<< orphan*/  exclude_kernel; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct perf_evsel* FUNC1 (struct perf_evlist*) ; 
 int FUNC2 (struct perf_evlist*) ; 

__attribute__((used)) static int FUNC3(struct perf_evlist *evlist)
{
	struct perf_evsel *evsel = FUNC1(evlist);

	FUNC0("wrong exclude_user", evsel->attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->attr.exclude_hv);
	FUNC0("wrong precise_ip", !evsel->attr.precise_ip);

	return FUNC2(evlist);
}