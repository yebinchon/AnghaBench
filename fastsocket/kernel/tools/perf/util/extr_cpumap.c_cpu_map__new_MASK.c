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
struct cpu_map {int dummy; } ;

/* Variables and functions */
 unsigned long INT_MAX ; 
 scalar_t__ MAX_NR_CPUS ; 
 struct cpu_map* FUNC0 () ; 
 struct cpu_map* FUNC1 () ; 
 struct cpu_map* FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (char const) ; 
 int* FUNC5 (int*,int) ; 
 unsigned long FUNC6 (char const*,char**,int /*<<< orphan*/ ) ; 

struct cpu_map *FUNC7(const char *cpu_list)
{
	struct cpu_map *cpus = NULL;
	unsigned long start_cpu, end_cpu = 0;
	char *p = NULL;
	int i, nr_cpus = 0;
	int *tmp_cpus = NULL, *tmp;
	int max_entries = 0;

	if (!cpu_list)
		return FUNC1();

	if (!FUNC4(*cpu_list))
		goto out;

	while (FUNC4(*cpu_list)) {
		p = NULL;
		start_cpu = FUNC6(cpu_list, &p, 0);
		if (start_cpu >= INT_MAX
		    || (*p != '\0' && *p != ',' && *p != '-'))
			goto invalid;

		if (*p == '-') {
			cpu_list = ++p;
			p = NULL;
			end_cpu = FUNC6(cpu_list, &p, 0);

			if (end_cpu >= INT_MAX || (*p != '\0' && *p != ','))
				goto invalid;

			if (end_cpu < start_cpu)
				goto invalid;
		} else {
			end_cpu = start_cpu;
		}

		for (; start_cpu <= end_cpu; start_cpu++) {
			/* check for duplicates */
			for (i = 0; i < nr_cpus; i++)
				if (tmp_cpus[i] == (int)start_cpu)
					goto invalid;

			if (nr_cpus == max_entries) {
				max_entries += MAX_NR_CPUS;
				tmp = FUNC5(tmp_cpus, max_entries * sizeof(int));
				if (tmp == NULL)
					goto invalid;
				tmp_cpus = tmp;
			}
			tmp_cpus[nr_cpus++] = (int)start_cpu;
		}
		if (*p)
			++p;

		cpu_list = p;
	}

	if (nr_cpus > 0)
		cpus = FUNC2(nr_cpus, tmp_cpus);
	else
		cpus = FUNC0();
invalid:
	FUNC3(tmp_cpus);
out:
	return cpus;
}