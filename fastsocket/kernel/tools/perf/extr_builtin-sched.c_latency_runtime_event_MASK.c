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
typedef  void* u64 ;
typedef  void* u32 ;
struct work_atoms {int dummy; } ;
struct thread {int dummy; } ;
struct perf_sched {int /*<<< orphan*/  cmp_pid; int /*<<< orphan*/  atom_root; } ;
struct perf_sample {int cpu; void* time; } ;
struct perf_evsel {int dummy; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_CPUS ; 
 int /*<<< orphan*/  FUNC1 (struct work_atoms*,void* const,void*) ; 
 scalar_t__ FUNC2 (struct work_atoms*,char,void*) ; 
 struct thread* FUNC3 (struct machine*,void* const) ; 
 void* FUNC4 (struct perf_evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct perf_sched*,struct thread*) ; 
 struct work_atoms* FUNC7 (int /*<<< orphan*/ *,struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct perf_sched *sched,
				 struct perf_evsel *evsel,
				 struct perf_sample *sample,
				 struct machine *machine)
{
	const u32 pid	   = FUNC4(evsel, sample, "pid");
	const u64 runtime  = FUNC4(evsel, sample, "runtime");
	struct thread *thread = FUNC3(machine, pid);
	struct work_atoms *atoms = FUNC7(&sched->atom_root, thread, &sched->cmp_pid);
	u64 timestamp = sample->time;
	int cpu = sample->cpu;

	FUNC0(cpu >= MAX_CPUS || cpu < 0);
	if (!atoms) {
		if (FUNC6(sched, thread))
			return -1;
		atoms = FUNC7(&sched->atom_root, thread, &sched->cmp_pid);
		if (!atoms) {
			FUNC5("in-event: Internal tree error");
			return -1;
		}
		if (FUNC2(atoms, 'R', timestamp))
			return -1;
	}

	FUNC1(atoms, runtime, timestamp);
	return 0;
}