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
struct TYPE_2__ {int exclude_host; int /*<<< orphan*/  exclude_guest; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct perf_evsel* FUNC1 (struct perf_evlist*) ; 
 int FUNC2 (struct perf_evlist*) ; 

__attribute__((used)) static int FUNC3(struct perf_evlist *evlist)
{
	struct perf_evsel *evsel = FUNC1(evlist);

	FUNC0("wrong exclude guest", !evsel->attr.exclude_guest);
	FUNC0("wrong exclude host", evsel->attr.exclude_host);

	return FUNC2(evlist);
}