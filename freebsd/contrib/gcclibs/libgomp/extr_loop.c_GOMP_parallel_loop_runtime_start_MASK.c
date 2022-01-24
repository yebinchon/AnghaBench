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
 int /*<<< orphan*/  FUNC0 (void (*) (void*),void*,unsigned int,long,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gomp_run_sched_chunk ; 
 int /*<<< orphan*/  gomp_run_sched_var ; 

void
FUNC1 (void (*fn) (void *), void *data,
				  unsigned num_threads, long start, long end,
				  long incr)
{
  FUNC0 (fn, data, num_threads, start, end, incr,
			    gomp_run_sched_var, gomp_run_sched_chunk);
}