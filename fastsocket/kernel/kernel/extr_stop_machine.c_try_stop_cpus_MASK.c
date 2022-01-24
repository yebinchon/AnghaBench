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
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  cpu_stop_fn_t ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct cpumask const*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stop_cpus_mutex ; 

int FUNC3(const struct cpumask *cpumask, cpu_stop_fn_t fn, void *arg)
{
	int ret;

	/* static works are used, process one request at a time */
	if (!FUNC1(&stop_cpus_mutex))
		return -EAGAIN;
	ret = FUNC0(cpumask, fn, arg);
	FUNC2(&stop_cpus_mutex);
	return ret;
}