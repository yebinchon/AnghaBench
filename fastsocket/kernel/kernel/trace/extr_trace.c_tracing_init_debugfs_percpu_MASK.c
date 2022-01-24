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
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tracing_buffers_fops ; 
 struct dentry* FUNC4 () ; 
 int /*<<< orphan*/  tracing_fops ; 
 int /*<<< orphan*/  tracing_pipe_fops ; 
 int /*<<< orphan*/  tracing_stats_fops ; 

__attribute__((used)) static void FUNC5(long cpu)
{
	struct dentry *d_percpu = FUNC4();
	struct dentry *d_cpu;
	/* strlen(cpu) + MAX(log10(cpu)) + '\0' */
	char cpu_dir[7];

	if (cpu > 999 || cpu < 0)
		return;

	FUNC2(cpu_dir, "cpu%ld", cpu);
	d_cpu = FUNC0(cpu_dir, d_percpu);
	if (!d_cpu) {
		FUNC1("Could not create debugfs '%s' entry\n", cpu_dir);
		return;
	}

	/* per cpu trace_pipe */
	FUNC3("trace_pipe", 0444, d_cpu,
			(void *) cpu, &tracing_pipe_fops);

	/* per cpu trace */
	FUNC3("trace", 0644, d_cpu,
			(void *) cpu, &tracing_fops);

	FUNC3("trace_pipe_raw", 0444, d_cpu,
			(void *) cpu, &tracing_buffers_fops);

	FUNC3("stats", 0444, d_cpu,
			(void *) cpu, &tracing_stats_fops);
}