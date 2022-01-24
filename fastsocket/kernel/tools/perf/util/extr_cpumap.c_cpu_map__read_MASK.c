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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_NR_CPUS ; 
 struct cpu_map* FUNC0 () ; 
 struct cpu_map* FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*,char*) ; 
 int* FUNC4 (int*,int) ; 

struct cpu_map *FUNC5(FILE *file)
{
	struct cpu_map *cpus = NULL;
	int nr_cpus = 0;
	int *tmp_cpus = NULL, *tmp;
	int max_entries = 0;
	int n, cpu, prev;
	char sep;

	sep = 0;
	prev = -1;
	for (;;) {
		n = FUNC3(file, "%u%c", &cpu, &sep);
		if (n <= 0)
			break;
		if (prev >= 0) {
			int new_max = nr_cpus + cpu - prev - 1;

			if (new_max >= max_entries) {
				max_entries = new_max + MAX_NR_CPUS / 2;
				tmp = FUNC4(tmp_cpus, max_entries * sizeof(int));
				if (tmp == NULL)
					goto out_free_tmp;
				tmp_cpus = tmp;
			}

			while (++prev < cpu)
				tmp_cpus[nr_cpus++] = prev;
		}
		if (nr_cpus == max_entries) {
			max_entries += MAX_NR_CPUS;
			tmp = FUNC4(tmp_cpus, max_entries * sizeof(int));
			if (tmp == NULL)
				goto out_free_tmp;
			tmp_cpus = tmp;
		}

		tmp_cpus[nr_cpus++] = cpu;
		if (n == 2 && sep == '-')
			prev = cpu;
		else
			prev = -1;
		if (n == 1 || sep == '\n')
			break;
	}

	if (nr_cpus > 0)
		cpus = FUNC1(nr_cpus, tmp_cpus);
	else
		cpus = FUNC0();
out_free_tmp:
	FUNC2(tmp_cpus);
	return cpus;
}