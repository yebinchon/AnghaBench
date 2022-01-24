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
struct cpu_map {int* map; int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 struct cpu_map* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cpu_map *FUNC2(void)
{
	struct cpu_map *cpus;
	int nr_cpus;

	nr_cpus = FUNC1(_SC_NPROCESSORS_ONLN);
	if (nr_cpus < 0)
		return NULL;

	cpus = FUNC0(sizeof(*cpus) + nr_cpus * sizeof(int));
	if (cpus != NULL) {
		int i;
		for (i = 0; i < nr_cpus; ++i)
			cpus->map[i] = i;

		cpus->nr = nr_cpus;
	}

	return cpus;
}