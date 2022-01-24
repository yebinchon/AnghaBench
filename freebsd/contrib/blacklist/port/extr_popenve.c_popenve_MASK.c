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
struct pid {int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char const*,char* const*,char* const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct pid*) ; 
 struct pid* FUNC4 (int*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int*,struct pid*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  pidlist_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

FILE *
FUNC9(const char *cmd, char *const *argv, char *const *envp, const char *type)
{
	struct pid *cur;
	int pdes[2], serrno;
	pid_t pid;

	if ((cur = FUNC4(pdes, &type)) == NULL)
		return NULL;

#ifdef _REENTRANT
	(void)rwlock_rdlock(&pidlist_lock);
#endif
	switch (pid = FUNC8()) {
	case -1:			/* Error. */
		serrno = errno;
#ifdef _REENTRANT
		(void)rwlock_unlock(&pidlist_lock);
#endif
		FUNC3(pdes, cur);
		errno = serrno;
		return NULL;
		/* NOTREACHED */
	case 0:				/* Child. */
		FUNC2(pdes, type);
		FUNC1(cmd, argv, envp);
		FUNC0(127);
		/* NOTREACHED */
	}

	FUNC5(pdes, cur, pid, type);

#ifdef _REENTRANT
	(void)rwlock_unlock(&pidlist_lock);
#endif

	return cur->fp;
}