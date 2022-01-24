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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ current ; 
 scalar_t__* fakewriter_tasks ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int nfakewriters ; 
 int nrealreaders ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int rcu_idle_cpu ; 
 scalar_t__* reader_tasks ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shuffle_tmp_mask ; 
 scalar_t__ stats_task ; 
 scalar_t__ writer_task ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;

	FUNC1(shuffle_tmp_mask);
	FUNC2();

	/* No point in shuffling if there is only one online CPU (ex: UP) */
	if (FUNC3() == 1) {
		FUNC4();
		return;
	}

	if (rcu_idle_cpu != -1)
		FUNC0(rcu_idle_cpu, shuffle_tmp_mask);

	FUNC5(current, shuffle_tmp_mask);

	if (reader_tasks) {
		for (i = 0; i < nrealreaders; i++)
			if (reader_tasks[i])
				FUNC5(reader_tasks[i],
						     shuffle_tmp_mask);
	}

	if (fakewriter_tasks) {
		for (i = 0; i < nfakewriters; i++)
			if (fakewriter_tasks[i])
				FUNC5(fakewriter_tasks[i],
						     shuffle_tmp_mask);
	}

	if (writer_task)
		FUNC5(writer_task, shuffle_tmp_mask);

	if (stats_task)
		FUNC5(stats_task, shuffle_tmp_mask);

	if (rcu_idle_cpu == -1)
		rcu_idle_cpu = FUNC3() - 1;
	else
		rcu_idle_cpu--;

	FUNC4();
}