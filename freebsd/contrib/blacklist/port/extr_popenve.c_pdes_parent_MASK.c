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
struct pid {int fd; struct pid* next; int /*<<< orphan*/  pid; int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,char const*) ; 
 struct pid* pidlist ; 

__attribute__((used)) static void
FUNC2(int *pdes, struct pid *cur, pid_t pid, const char *type)
{
	FILE *iop;

	/* Parent; assume fdopen can't fail. */
	if (*type == 'r') {
		iop = FUNC1(pdes[0], type);
#ifdef _REENTRANT
		cur->fd = pdes[0];
#endif
		(void)FUNC0(pdes[1]);
	} else {
		iop = FUNC1(pdes[1], type);
#ifdef _REENTRANT
		cur->fd = pdes[1];
#endif
		(void)FUNC0(pdes[0]);
	}

	/* Link into list of file descriptors. */
	cur->fp = iop;
	cur->pid =  pid;
	cur->next = pidlist;
	pidlist = cur;
}