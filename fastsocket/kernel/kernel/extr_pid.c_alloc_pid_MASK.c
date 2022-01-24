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
struct upid {int nr; struct pid_namespace* ns; int /*<<< orphan*/  pid_chain; } ;
struct pid_namespace {int level; int /*<<< orphan*/  pid_cachep; int /*<<< orphan*/  nr_hashed; struct pid_namespace* parent; } ;
struct pid {int level; struct upid* numbers; int /*<<< orphan*/ * tasks; int /*<<< orphan*/  count; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PIDTYPE_MAX ; 
 int FUNC1 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct upid*) ; 
 int /*<<< orphan*/  FUNC4 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pid*) ; 
 struct pid* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pid*) ; 
 int /*<<< orphan*/ * pid_hash ; 
 size_t FUNC9 (int,struct pid_namespace*) ; 
 scalar_t__ FUNC10 (struct pid_namespace*) ; 
 int /*<<< orphan*/  pidmap_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

struct pid *FUNC14(struct pid_namespace *ns)
{
	struct pid *pid;
	enum pid_type type;
	int i, nr;
	struct pid_namespace *tmp;
	struct upid *upid;

	pid = FUNC7(ns->pid_cachep, GFP_KERNEL);
	if (!pid)
		goto out;

	tmp = ns;
	pid->level = ns->level;
	for (i = ns->level; i >= 0; i--) {
		nr = FUNC1(tmp);
		if (nr < 0)
			goto out_free;

		pid->numbers[i].nr = nr;
		pid->numbers[i].ns = tmp;
		tmp = tmp->parent;
	}

	if (FUNC13(FUNC6(pid))) {
		if (FUNC10(ns))
			goto out_free;
	}

	FUNC4(ns);
	FUNC2(&pid->count, 1);
	for (type = 0; type < PIDTYPE_MAX; ++type)
		FUNC0(&pid->tasks[type]);

	upid = pid->numbers + ns->level;
	FUNC11(&pidmap_lock);
	for ( ; upid >= pid->numbers; --upid) {
		FUNC5(&upid->pid_chain,
				&pid_hash[FUNC9(upid->nr, upid->ns)]);
		upid->ns->nr_hashed++;
	}
	FUNC12(&pidmap_lock);

out:
	return pid;

out_free:
	while (++i <= ns->level)
		FUNC3(pid->numbers + i);

	FUNC8(ns->pid_cachep, pid);
	pid = NULL;
	goto out;
}