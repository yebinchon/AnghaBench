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
struct cpu_stop_done {int ret; scalar_t__ executed; int /*<<< orphan*/  completion; } ;
typedef  int /*<<< orphan*/  cpu_stop_fn_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct cpu_stop_done*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask const*,int /*<<< orphan*/ ,void*,struct cpu_stop_done*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const struct cpumask *cpumask,
		       cpu_stop_fn_t fn, void *arg)
{
	struct cpu_stop_done done;

	FUNC0(&done, FUNC1(cpumask));
	FUNC2(cpumask, fn, arg, &done);
	FUNC3(&done.completion);
	return done.executed ? done.ret : -ENOENT;
}