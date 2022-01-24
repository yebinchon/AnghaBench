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
struct task_struct {scalar_t__ files; int /*<<< orphan*/  real_parent; } ;
struct seq_file {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct group_info {int /*<<< orphan*/  ngroups; } ;
struct fdtable {int /*<<< orphan*/  max_fds; } ;
struct cred {struct group_info* group_info; int /*<<< orphan*/  fsgid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; int /*<<< orphan*/  fsuid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct group_info*,int) ; 
 int /*<<< orphan*/  NGROUPS_SMALL ; 
 struct fdtable* FUNC1 (scalar_t__) ; 
 struct cred* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct pid*,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (struct cred const*) ; 
 struct task_struct* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 scalar_t__ FUNC13 (struct task_struct*,struct pid_namespace*) ; 
 scalar_t__ FUNC14 (struct task_struct*,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct seq_file*,struct task_struct*) ; 
 struct task_struct* FUNC17 (struct task_struct*) ; 

__attribute__((used)) static inline void FUNC18(struct seq_file *m, struct pid_namespace *ns,
				struct pid *pid, struct task_struct *p)
{
	struct group_info *group_info;
	int g;
	struct fdtable *fdt = NULL;
	const struct cred *cred;
	pid_t ppid, tpid;

	FUNC9();
	ppid = FUNC5(p) ?
		FUNC14(FUNC8(p->real_parent), ns) : 0;
	tpid = 0;
	if (FUNC5(p)) {
		struct task_struct *tracer = FUNC17(p);
		if (tracer)
			tpid = FUNC13(tracer, ns);
	}
	cred = FUNC2(p);
	FUNC11(m,
		"State:\t%s\n"
		"Tgid:\t%d\n"
		"Pid:\t%d\n"
		"PPid:\t%d\n"
		"TracerPid:\t%d\n"
		"Uid:\t%d\t%d\t%d\t%d\n"
		"Gid:\t%d\t%d\t%d\t%d\n",
		FUNC3(p),
		FUNC14(p, ns),
		FUNC6(pid, ns),
		ppid, tpid,
		cred->uid, cred->euid, cred->suid, cred->fsuid,
		cred->gid, cred->egid, cred->sgid, cred->fsgid);

	FUNC16(m, p);

	FUNC12(p);
	if (p->files)
		fdt = FUNC1(p->files);
	FUNC11(m,
		"FDSize:\t%d\n"
		"Groups:\t",
		fdt ? fdt->max_fds : 0);
	FUNC10();

	group_info = cred->group_info;
	FUNC15(p);

	for (g = 0; g < FUNC4(group_info->ngroups, NGROUPS_SMALL); g++)
		FUNC11(m, "%d ", FUNC0(group_info, g));
	FUNC7(cred);

	FUNC11(m, "\n");
}