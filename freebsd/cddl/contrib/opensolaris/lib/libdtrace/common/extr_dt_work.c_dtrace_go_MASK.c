#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ n_matched; void* dof; } ;
struct TYPE_12__ {int dt_active; int dt_errno; TYPE_2__ dt_beganon; int /*<<< orphan*/ * dt_vector; int /*<<< orphan*/ * dt_errprog; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  TYPE_2__ dtrace_enable_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACEIOC_ENABLE ; 
 int /*<<< orphan*/  DTRACEIOC_GO ; 
 int E2BIG ; 
 int EACCES ; 
 int EALREADY ; 
 int EDT_BUFTOOSMALL ; 
 int EDT_DESTRUCTIVE ; 
 int EDT_ENDTOOBIG ; 
 int EDT_ISANON ; 
 int EDT_NOANON ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENOTTY ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 void* FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int errno ; 

int
FUNC7(dtrace_hdl_t *dtp)
{
	dtrace_enable_io_t args;
	void *dof;
	int error, r;

	if (dtp->dt_active)
		return (FUNC3(dtp, EINVAL));

	/*
	 * If a dtrace:::ERROR program and callback are registered, enable the
	 * program before we start tracing.  If this fails for a vector open
	 * with ENOTTY, we permit dtrace_go() to succeed so that vector clients
	 * such as mdb's dtrace module can execute the rest of dtrace_go() even
	 * though they do not provide support for the DTRACEIOC_ENABLE ioctl.
	 */
	if (dtp->dt_errprog != NULL &&
	    FUNC6(dtp, dtp->dt_errprog, NULL) == -1 && (
	    dtp->dt_errno != ENOTTY || dtp->dt_vector == NULL))
		return (-1); /* dt_errno has been set for us */

	if ((dof = FUNC5(dtp)) == NULL)
		return (-1); /* dt_errno has been set for us */

	args.dof = dof;
	args.n_matched = 0;
	r = FUNC1(dtp, DTRACEIOC_ENABLE, &args);
	error = errno;
	FUNC4(dtp, dof);

	if (r == -1 && (error != ENOTTY || dtp->dt_vector == NULL))
		return (FUNC3(dtp, error));

	if (FUNC1(dtp, DTRACEIOC_GO, &dtp->dt_beganon) == -1) {
		if (errno == EACCES)
			return (FUNC3(dtp, EDT_DESTRUCTIVE));

		if (errno == EALREADY)
			return (FUNC3(dtp, EDT_ISANON));

		if (errno == ENOENT)
			return (FUNC3(dtp, EDT_NOANON));

		if (errno == E2BIG)
			return (FUNC3(dtp, EDT_ENDTOOBIG));

		if (errno == ENOSPC)
			return (FUNC3(dtp, EDT_BUFTOOSMALL));

		return (FUNC3(dtp, errno));
	}

	dtp->dt_active = 1;

	if (FUNC2(dtp) == -1)
		return (FUNC3(dtp, errno));

	return (FUNC0(dtp));
}