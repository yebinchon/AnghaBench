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
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  fastsocket_spawn_cpu ; 
 int /*<<< orphan*/  fastsocket_spawn_cpuset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cpumask*) ; 

__attribute__((used)) static void FUNC4(int cpu)
{
	struct cpumask mask;
	
	FUNC1(&mask);
	FUNC2(mask);

	FUNC3(current->pid, &mask);

	if (-1 != cpu) {
		FUNC0(cpu, fastsocket_spawn_cpuset);
		fastsocket_spawn_cpu--;
	}
}