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
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct svc_export {int ex_flags; TYPE_1__ ex_path; } ;
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct svc_export*) ; 
 scalar_t__ FUNC1 (struct svc_export*) ; 
 int NFSEXP_CROSSMOUNT ; 
 int NFSEXP_V4ROOT ; 
 int FUNC2 (struct svc_export*) ; 
 int FUNC3 (struct path*,int) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 struct svc_export* FUNC9 (struct svc_rqst*,struct path*) ; 

int
FUNC10(struct svc_rqst *rqstp, struct dentry **dpp, 
		        struct svc_export **expp)
{
	struct svc_export *exp = *expp, *exp2 = NULL;
	struct dentry *dentry = *dpp;
	struct path path = {.mnt = FUNC6(exp->ex_path.mnt),
			    .dentry = FUNC4(dentry)};
	int err = 0;

	err = FUNC3(&path, false);
	if (err < 0)
		goto out;

	exp2 = FUNC9(rqstp, &path);
	if (FUNC1(exp2)) {
		err = FUNC2(exp2);
		/*
		 * We normally allow NFS clients to continue
		 * "underneath" a mountpoint that is not exported.
		 * The exception is V4ROOT, where no traversal is ever
		 * allowed without an explicit export of the new
		 * directory.
		 */
		if (err == -ENOENT && !(exp->ex_flags & NFSEXP_V4ROOT))
			err = 0;
		FUNC8(&path);
		goto out;
	}
	if (FUNC7(rqstp) ||
		(exp->ex_flags & NFSEXP_CROSSMOUNT) || FUNC0(exp2)) {
		/* successfully crossed mount point */
		/*
		 * This is subtle: path.dentry is *not* on path.mnt
		 * at this point.  The only reason we are safe is that
		 * original mnt is pinned down by exp, so we should
		 * put path *before* putting exp
		 */
		*dpp = path.dentry;
		path.dentry = dentry;
		*expp = exp2;
		exp2 = exp;
	}
	FUNC8(&path);
	FUNC5(exp2);
out:
	return err;
}