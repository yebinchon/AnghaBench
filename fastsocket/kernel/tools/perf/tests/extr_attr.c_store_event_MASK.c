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
struct perf_event_attr {int type; int /*<<< orphan*/  config; } ;
typedef  unsigned long pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 char* PRIu32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,char*,unsigned long) ; 
 int /*<<< orphan*/  bp_type ; 
 int /*<<< orphan*/  branch_sample_type ; 
 int /*<<< orphan*/  comm ; 
 int /*<<< orphan*/  config ; 
 int /*<<< orphan*/  config1 ; 
 int /*<<< orphan*/  config2 ; 
 char* dir ; 
 int /*<<< orphan*/  disabled ; 
 int /*<<< orphan*/  enable_on_exec ; 
 int /*<<< orphan*/  exclude_guest ; 
 int /*<<< orphan*/  exclude_host ; 
 int /*<<< orphan*/  exclude_hv ; 
 int /*<<< orphan*/  exclude_idle ; 
 int /*<<< orphan*/  exclude_kernel ; 
 int /*<<< orphan*/  exclude_user ; 
 int /*<<< orphan*/  exclusive ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  freq ; 
 int /*<<< orphan*/  inherit ; 
 int /*<<< orphan*/  inherit_stat ; 
 int /*<<< orphan*/  mmap ; 
 int /*<<< orphan*/  mmap_data ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  pinned ; 
 int /*<<< orphan*/  precise_ip ; 
 int /*<<< orphan*/  read_format ; 
 int /*<<< orphan*/  sample_id_all ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  sample_type ; 
 int /*<<< orphan*/  size ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  task ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  wakeup_events ; 
 int /*<<< orphan*/  watermark ; 

__attribute__((used)) static int FUNC7(struct perf_event_attr *attr, pid_t pid, int cpu,
		       int fd, int group_fd, unsigned long flags)
{
	FILE *file;
	char path[PATH_MAX];

	FUNC6(path, PATH_MAX, "%s/event-%d-%llu-%d", dir,
		 attr->type, attr->config, fd);

	file = FUNC3(path, "w+");
	if (!file) {
		FUNC5("test attr - failed to open event file");
		return -1;
	}

	if (FUNC4(file, "[event-%d-%llu-%d]\n",
		    attr->type, attr->config, fd) < 0) {
		FUNC5("test attr - failed to write event file");
		FUNC2(file);
		return -1;
	}

	/* syscall arguments */
	FUNC1(fd,       "d", fd);
	FUNC1(group_fd, "d", group_fd);
	FUNC1(cpu,      "d", cpu);
	FUNC1(pid,      "d", pid);
	FUNC1(flags,   "lu", flags);

	/* struct perf_event_attr */
	FUNC0(type,   PRIu32);
	FUNC0(size,   PRIu32);
	FUNC0(config,  "llu");
	FUNC0(sample_period, "llu");
	FUNC0(sample_type,   "llu");
	FUNC0(read_format,   "llu");
	FUNC0(disabled,       "d");
	FUNC0(inherit,        "d");
	FUNC0(pinned,         "d");
	FUNC0(exclusive,      "d");
	FUNC0(exclude_user,   "d");
	FUNC0(exclude_kernel, "d");
	FUNC0(exclude_hv,     "d");
	FUNC0(exclude_idle,   "d");
	FUNC0(mmap,           "d");
	FUNC0(comm,           "d");
	FUNC0(freq,           "d");
	FUNC0(inherit_stat,   "d");
	FUNC0(enable_on_exec, "d");
	FUNC0(task,           "d");
	FUNC0(watermark,      "d");
	FUNC0(precise_ip,     "d");
	FUNC0(mmap_data,      "d");
	FUNC0(sample_id_all,  "d");
	FUNC0(exclude_host,   "d");
	FUNC0(exclude_guest,  "d");
/*
 * RHEL6 - no support for:
 *   exclude_callchain_kernel
 *   exclude_callchain_user
 *   sample_regs_user
 *   sample_stack_user
 *
	WRITE_ASS(exclude_callchain_kernel, "d");
	WRITE_ASS(exclude_callchain_user, "d");
*/
	FUNC0(wakeup_events, PRIu32);
	FUNC0(bp_type, PRIu32);
	FUNC0(config1, "llu");
	FUNC0(config2, "llu");
	FUNC0(branch_sample_type, "llu");
/*
	WRITE_ASS(sample_regs_user,   "llu");
	WRITE_ASS(sample_stack_user,  PRIu32);
*/

	FUNC2(file);
	return 0;
}