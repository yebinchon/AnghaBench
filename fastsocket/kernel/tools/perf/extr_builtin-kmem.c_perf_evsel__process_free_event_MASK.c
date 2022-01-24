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
struct perf_sample {scalar_t__ cpu; } ;
struct perf_evsel {int dummy; } ;
struct alloc_stat {short alloc_cpu; int /*<<< orphan*/  pingpong; int /*<<< orphan*/  call_site; } ;

/* Variables and functions */
 int /*<<< orphan*/  callsite_cmp ; 
 unsigned long FUNC0 (struct perf_evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  ptr_cmp ; 
 int /*<<< orphan*/  root_alloc_stat ; 
 int /*<<< orphan*/  root_caller_stat ; 
 struct alloc_stat* FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct perf_evsel *evsel,
					  struct perf_sample *sample)
{
	unsigned long ptr = FUNC0(evsel, sample, "ptr");
	struct alloc_stat *s_alloc, *s_caller;

	s_alloc = FUNC1(ptr, 0, &root_alloc_stat, ptr_cmp);
	if (!s_alloc)
		return 0;

	if ((short)sample->cpu != s_alloc->alloc_cpu) {
		s_alloc->pingpong++;

		s_caller = FUNC1(0, s_alloc->call_site,
					     &root_caller_stat, callsite_cmp);
		if (!s_caller)
			return -1;
		s_caller->pingpong++;
	}
	s_alloc->alloc_cpu = -1;

	return 0;
}