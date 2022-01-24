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
typedef  scalar_t__ u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {scalar_t__ sid; scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; scalar_t__ exec_sid; } ;
struct cred {struct task_security_struct* security; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_MAC_ADMIN ; 
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  PROCESS__DYNTRANSITION ; 
 int /*<<< orphan*/  PROCESS__PTRACE ; 
 int /*<<< orphan*/  PROCESS__SETCURRENT ; 
 int /*<<< orphan*/  PROCESS__SETEXEC ; 
 int /*<<< orphan*/  PROCESS__SETFSCREATE ; 
 int /*<<< orphan*/  PROCESS__SETKEYCREATE ; 
 int /*<<< orphan*/  PROCESS__SETSOCKCREATE ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred*) ; 
 struct task_struct* current ; 
 int FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__,struct task_struct*) ; 
 struct cred* FUNC7 () ; 
 int FUNC8 (scalar_t__,scalar_t__) ; 
 int FUNC9 (void*,size_t,scalar_t__*) ; 
 int FUNC10 (void*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 scalar_t__ FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 
 struct task_struct* FUNC15 (struct task_struct*) ; 

__attribute__((used)) static int FUNC16(struct task_struct *p,
			       char *name, void *value, size_t size)
{
	struct task_security_struct *tsec;
	struct task_struct *tracer;
	struct cred *new;
	u32 sid = 0, ptsid;
	int error;
	char *str = value;

	if (current != p) {
		/* SELinux only allows a process to change its own
		   security attributes. */
		return -EACCES;
	}

	/*
	 * Basic control over ability to set these attributes at all.
	 * current == p, but we'll pass them separately in case the
	 * above restriction is ever removed.
	 */
	if (!FUNC11(name, "exec"))
		error = FUNC4(p, PROCESS__SETEXEC);
	else if (!FUNC11(name, "fscreate"))
		error = FUNC4(p, PROCESS__SETFSCREATE);
	else if (!FUNC11(name, "keycreate"))
		error = FUNC4(p, PROCESS__SETKEYCREATE);
	else if (!FUNC11(name, "sockcreate"))
		error = FUNC4(p, PROCESS__SETSOCKCREATE);
	else if (!FUNC11(name, "current"))
		error = FUNC4(p, PROCESS__SETCURRENT);
	else
		error = -EINVAL;
	if (error)
		return error;

	/* Obtain a SID for the context, if one was specified. */
	if (size && str[1] && str[1] != '\n') {
		if (str[size-1] == '\n') {
			str[size-1] = 0;
			size--;
		}
		error = FUNC9(value, size, &sid);
		if (error == -EINVAL && !FUNC11(name, "fscreate")) {
			if (!FUNC2(CAP_MAC_ADMIN))
				return error;
			error = FUNC10(value, size,
							      &sid);
		}
		if (error)
			return error;
	}

	new = FUNC7();
	if (!new)
		return -ENOMEM;

	/* Permission checking based on the specified context is
	   performed during the actual operation (execve,
	   open/mkdir/...), when we know the full context of the
	   operation.  See selinux_bprm_set_creds for the execve
	   checks and may_create for the file creation checks. The
	   operation will then fail if the context is not permitted. */
	tsec = new->security;
	if (!FUNC11(name, "exec")) {
		tsec->exec_sid = sid;
	} else if (!FUNC11(name, "fscreate")) {
		tsec->create_sid = sid;
	} else if (!FUNC11(name, "keycreate")) {
		error = FUNC6(sid, p);
		if (error)
			goto abort_change;
		tsec->keycreate_sid = sid;
	} else if (!FUNC11(name, "sockcreate")) {
		tsec->sockcreate_sid = sid;
	} else if (!FUNC11(name, "current")) {
		error = -EINVAL;
		if (sid == 0)
			goto abort_change;

		/* Only allow single threaded processes to change context */
		error = -EPERM;
		if (!FUNC5()) {
			error = FUNC8(tsec->sid, sid);
			if (error)
				goto abort_change;
		}

		/* Check permissions for the transition. */
		error = FUNC1(tsec->sid, sid, SECCLASS_PROCESS,
				     PROCESS__DYNTRANSITION, NULL);
		if (error)
			goto abort_change;

		/* Check for ptracing, and update the task SID if ok.
		   Otherwise, leave SID unchanged and fail. */
		ptsid = 0;
		FUNC12(p);
		tracer = FUNC15(p);
		if (tracer)
			ptsid = FUNC13(tracer);
		FUNC14(p);

		if (tracer) {
			error = FUNC1(ptsid, sid, SECCLASS_PROCESS,
					     PROCESS__PTRACE, NULL);
			if (error)
				goto abort_change;
		}

		tsec->sid = sid;
	} else {
		error = -EINVAL;
		goto abort_change;
	}

	FUNC3(new);
	return size;

abort_change:
	FUNC0(new);
	return error;
}