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
struct pid {int /*<<< orphan*/  pid; struct pid* next; int /*<<< orphan*/ * fp; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ ESRCH ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pid*) ; 
 struct pid* pidlist ; 
 int /*<<< orphan*/  pidlist_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC5(FILE *iop)
{
	struct pid *cur, *last;
	int pstat;
	pid_t pid;

#ifdef _REENTRANT
	rwlock_wrlock(&pidlist_lock);
#endif

	/* Find the appropriate file pointer. */
	for (last = NULL, cur = pidlist; cur; last = cur, cur = cur->next)
		if (cur->fp == iop)
			break;
	if (cur == NULL) {
#ifdef _REENTRANT
		(void)rwlock_unlock(&pidlist_lock);
#endif
		errno = ESRCH;
		return -1;
	}

	(void)FUNC0(iop);

	/* Remove the entry from the linked list. */
	if (last == NULL)
		pidlist = cur->next;
	else
		last->next = cur->next;

#ifdef _REENTRANT
	(void)rwlock_unlock(&pidlist_lock);
#endif

	do {
		pid = FUNC4(cur->pid, &pstat, 0);
	} while (pid == -1 && errno == EINTR);

	FUNC1(cur);

	return pid == -1 ? -1 : pstat;
}