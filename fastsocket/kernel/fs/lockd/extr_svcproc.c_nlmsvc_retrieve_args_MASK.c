#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fl_lmops; scalar_t__ fl_owner; int /*<<< orphan*/  fl_file; } ;
struct nlm_lock {TYPE_1__ fl; int /*<<< orphan*/  fh; int /*<<< orphan*/  len; int /*<<< orphan*/  caller; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int /*<<< orphan*/  f_file; } ;
struct nlm_args {scalar_t__ monitor; struct nlm_lock lock; } ;
typedef  scalar_t__ fl_owner_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ nlm_lck_denied_nolocks ; 
 scalar_t__ FUNC0 (struct svc_rqst*,struct nlm_file**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_host*) ; 
 int /*<<< orphan*/  nlmsvc_lock_operations ; 
 struct nlm_host* FUNC2 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlmsvc_ops ; 
 scalar_t__ FUNC3 (struct nlm_host*) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nlm_args *argp,
			struct nlm_host **hostp, struct nlm_file **filp)
{
	struct nlm_host		*host = NULL;
	struct nlm_file		*file = NULL;
	struct nlm_lock		*lock = &argp->lock;
	__be32			error = 0;

	/* nfsd callbacks must have been installed for this procedure */
	if (!nlmsvc_ops)
		return nlm_lck_denied_nolocks;

	/* Obtain host handle */
	if (!(host = FUNC2(rqstp, lock->caller, lock->len))
	 || (argp->monitor && FUNC3(host) < 0))
		goto no_locks;
	*hostp = host;

	/* Obtain file pointer. Not used by FREE_ALL call. */
	if (filp != NULL) {
		if ((error = FUNC0(rqstp, &file, &lock->fh)) != 0)
			goto no_locks;
		*filp = file;

		/* Set up the missing parts of the file_lock structure */
		lock->fl.fl_file  = file->f_file;
		lock->fl.fl_owner = (fl_owner_t) host;
		lock->fl.fl_lmops = &nlmsvc_lock_operations;
	}

	return 0;

no_locks:
	FUNC1(host);
	if (error)
		return error;
	return nlm_lck_denied_nolocks;
}