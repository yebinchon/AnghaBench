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
struct perf_sample {int /*<<< orphan*/  cpu; } ;
struct perf_evsel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long,int,int) ; 
 int /*<<< orphan*/  nr_allocs ; 
 void* FUNC2 (struct perf_evsel*,struct perf_sample*,char*) ; 
 int total_allocated ; 
 int total_requested ; 

__attribute__((used)) static int FUNC3(struct perf_evsel *evsel,
					   struct perf_sample *sample)
{
	unsigned long ptr = FUNC2(evsel, sample, "ptr"),
		      call_site = FUNC2(evsel, sample, "call_site");
	int bytes_req = FUNC2(evsel, sample, "bytes_req"),
	    bytes_alloc = FUNC2(evsel, sample, "bytes_alloc");

	if (FUNC0(call_site, ptr, bytes_req, bytes_alloc, sample->cpu) ||
	    FUNC1(call_site, bytes_req, bytes_alloc))
		return -1;

	total_requested += bytes_req;
	total_allocated += bytes_alloc;

	nr_allocs++;
	return 0;
}