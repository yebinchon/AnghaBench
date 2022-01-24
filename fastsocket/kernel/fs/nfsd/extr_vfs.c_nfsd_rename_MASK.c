#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int rq_vers; } ;
struct svc_fh {int fh_locked; TYPE_2__* fh_export; struct dentry* fh_dentry; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_count; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {scalar_t__ mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  NFSD_MAY_CREATE ; 
 int /*<<< orphan*/  NFSD_MAY_REMOVE ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_fh*) ; 
 scalar_t__ FUNC6 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_fh*) ; 
 scalar_t__ FUNC10 (char*,int) ; 
 struct dentry* FUNC11 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC12 (char*,struct dentry*,int) ; 
 int FUNC13 (struct inode*) ; 
 scalar_t__ nfserr_acces ; 
 scalar_t__ nfserr_perm ; 
 scalar_t__ nfserr_xdev ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*,struct dentry*) ; 
 int FUNC17 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 

__be32
FUNC18(struct svc_rqst *rqstp, struct svc_fh *ffhp, char *fname, int flen,
			    struct svc_fh *tfhp, char *tname, int tlen)
{
	struct dentry	*fdentry, *tdentry, *odentry, *ndentry, *trap;
	struct inode	*fdir, *tdir;
	__be32		err;
	int		host_err;

	err = FUNC6(rqstp, ffhp, S_IFDIR, NFSD_MAY_REMOVE);
	if (err)
		goto out;
	err = FUNC6(rqstp, tfhp, S_IFDIR, NFSD_MAY_CREATE);
	if (err)
		goto out;

	fdentry = ffhp->fh_dentry;
	fdir = fdentry->d_inode;

	tdentry = tfhp->fh_dentry;
	tdir = tdentry->d_inode;

	err = (rqstp->rq_vers == 2) ? nfserr_acces : nfserr_xdev;
	if (ffhp->fh_export != tfhp->fh_export)
		goto out;

	err = nfserr_perm;
	if (!flen || FUNC10(fname, flen) || !tlen || FUNC10(tname, tlen))
		goto out;

	host_err = FUNC7(ffhp);
	if (host_err) {
		err = FUNC14(host_err);
		goto out;
	}

	/* cannot use fh_lock as we need deadlock protective ordering
	 * so do it by hand */
	trap = FUNC11(tdentry, fdentry);
	ffhp->fh_locked = tfhp->fh_locked = 1;
	FUNC9(ffhp);
	FUNC9(tfhp);

	odentry = FUNC12(fname, fdentry, flen);
	host_err = FUNC1(odentry);
	if (FUNC0(odentry))
		goto out_nfserr;

	host_err = -ENOENT;
	if (!odentry->d_inode)
		goto out_dput_old;
	host_err = -EINVAL;
	if (odentry == trap)
		goto out_dput_old;

	ndentry = FUNC12(tname, tdentry, tlen);
	host_err = FUNC1(ndentry);
	if (FUNC0(ndentry))
		goto out_dput_old;
	host_err = -ENOTEMPTY;
	if (ndentry == trap)
		goto out_dput_new;

	if (FUNC15(ffhp) &&
		((FUNC2(&odentry->d_count) > 1)
		 || (FUNC2(&ndentry->d_count) > 1))) {
			host_err = -EPERM;
			goto out_dput_new;
	}

	host_err = -EXDEV;
	if (ffhp->fh_export->ex_path.mnt != tfhp->fh_export->ex_path.mnt)
		goto out_dput_new;

	host_err = FUNC13(odentry->d_inode);
	if (host_err)
		goto out_dput_new;
	if (ndentry->d_inode) {
		host_err = FUNC13(ndentry->d_inode);
		if (host_err)
			goto out_dput_new;
	}
	host_err = FUNC17(fdir, odentry, tdir, ndentry);
	if (!host_err) {
		host_err = FUNC3(tfhp);
		if (!host_err)
			host_err = FUNC3(ffhp);
	}
 out_dput_new:
	FUNC4(ndentry);
 out_dput_old:
	FUNC4(odentry);
 out_nfserr:
	err = FUNC14(host_err);

	/* we cannot reply on fh_unlock on the two filehandles,
	 * as that would do the wrong thing if the two directories
	 * were the same, so again we do it by hand
	 */
	FUNC8(ffhp);
	FUNC8(tfhp);
	FUNC16(tdentry, fdentry);
	ffhp->fh_locked = tfhp->fh_locked = 0;
	FUNC5(ffhp);

out:
	return err;
}