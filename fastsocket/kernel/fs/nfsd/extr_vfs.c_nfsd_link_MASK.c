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
struct svc_rqst {int rq_vers; } ;
struct svc_fh {struct dentry* fh_dentry; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EXDEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  NFSD_MAY_CREATE ; 
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int FUNC2 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_fh*) ; 
 scalar_t__ FUNC7 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct svc_fh*) ; 
 scalar_t__ FUNC9 (char*,int) ; 
 struct dentry* FUNC10 (char*,struct dentry*,int) ; 
 int FUNC11 (struct inode*) ; 
 scalar_t__ nfserr_acces ; 
 scalar_t__ nfserr_exist ; 
 scalar_t__ nfserr_noent ; 
 scalar_t__ nfserr_perm ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (struct dentry*,struct inode*,struct dentry*) ; 

__be32
FUNC14(struct svc_rqst *rqstp, struct svc_fh *ffhp,
				char *name, int len, struct svc_fh *tfhp)
{
	struct dentry	*ddir, *dnew, *dold;
	struct inode	*dirp;
	__be32		err;
	int		host_err;

	err = FUNC7(rqstp, ffhp, S_IFDIR, NFSD_MAY_CREATE);
	if (err)
		goto out;
	err = FUNC7(rqstp, tfhp, -S_IFDIR, NFSD_MAY_NOP);
	if (err)
		goto out;

	err = nfserr_perm;
	if (!len)
		goto out;
	err = nfserr_exist;
	if (FUNC9(name, len))
		goto out;

	host_err = FUNC8(tfhp);
	if (host_err) {
		err = FUNC12(host_err);
		goto out;
	}

	FUNC5(ffhp, I_MUTEX_PARENT);
	ddir = ffhp->fh_dentry;
	dirp = ddir->d_inode;

	dnew = FUNC10(name, ddir, len);
	host_err = FUNC1(dnew);
	if (FUNC0(dnew))
		goto out_nfserr;

	dold = tfhp->fh_dentry;

	err = nfserr_noent;
	if (!dold->d_inode)
		goto out_dput;
	host_err = FUNC11(dold->d_inode);
	if (host_err) {
		err = FUNC12(host_err);
		goto out_dput;
	}
	host_err = FUNC13(dold, dirp, dnew);
	if (!host_err) {
		err = FUNC12(FUNC2(ffhp));
		if (!err)
			err = FUNC12(FUNC2(tfhp));
	} else {
		if (host_err == -EXDEV && rqstp->rq_vers == 2)
			err = nfserr_acces;
		else
			err = FUNC12(host_err);
	}
out_dput:
	FUNC3(dnew);
out_unlock:
	FUNC6(ffhp);
	FUNC4(tfhp);
out:
	return err;

out_nfserr:
	err = FUNC12(host_err);
	goto out_unlock;
}