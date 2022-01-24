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
struct task_struct {int dummy; } ;
struct cgroup_pidlist {int* list; int length; int /*<<< orphan*/  mutex; int /*<<< orphan*/  use_count; } ;
struct cgroup_iter {int dummy; } ;
struct cgroup {int dummy; } ;
typedef  int pid_t ;
typedef  enum cgroup_filetype { ____Placeholder_cgroup_filetype } cgroup_filetype ;

/* Variables and functions */
 int CGROUP_FILE_PROCS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*,struct cgroup_iter*) ; 
 struct task_struct* FUNC1 (struct cgroup*,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*,struct cgroup_iter*) ; 
 struct cgroup_pidlist* FUNC3 (struct cgroup*,int) ; 
 int FUNC4 (struct cgroup*) ; 
 int /*<<< orphan*/  cmppid ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int FUNC7 (int**,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct task_struct*) ; 
 int FUNC10 (struct task_struct*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct cgroup *cgrp, enum cgroup_filetype type,
			      struct cgroup_pidlist **lp)
{
	pid_t *array;
	int length;
	int pid, n = 0; /* used for populating the array */
	struct cgroup_iter it;
	struct task_struct *tsk;
	struct cgroup_pidlist *l;

	/*
	 * If cgroup gets more users after we read count, we won't have
	 * enough space - tough.  This race is indistinguishable to the
	 * caller from the case that the additional cgroup users didn't
	 * show up until sometime later on.
	 */
	length = FUNC4(cgrp);
	array = FUNC5(length);
	if (!array)
		return -ENOMEM;
	/* now, populate the array */
	FUNC2(cgrp, &it);
	while ((tsk = FUNC1(cgrp, &it))) {
		if (FUNC11(n == length))
			break;
		/* get tgid or pid for procs or tasks file respectively */
		if (type == CGROUP_FILE_PROCS)
			pid = FUNC10(tsk);
		else
			pid = FUNC9(tsk);
		if (pid > 0) /* make sure to only use valid results */
			array[n++] = pid;
	}
	FUNC0(cgrp, &it);
	length = n;
	/* now sort & (if procs) strip out duplicates */
	FUNC8(array, length, sizeof(pid_t), cmppid, NULL);
	if (type == CGROUP_FILE_PROCS)
		length = FUNC7(&array, length);
	l = FUNC3(cgrp, type);
	if (!l) {
		FUNC6(array);
		return -ENOMEM;
	}
	/* store array, freeing old if necessary - lock already held */
	FUNC6(l->list);
	l->list = array;
	l->length = length;
	l->use_count++;
	FUNC12(&l->mutex);
	*lp = l;
	return 0;
}