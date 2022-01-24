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
struct svc_fh {TYPE_1__* fh_export; struct dentry* fh_dentry; } ;
struct inode {int i_mode; } ;
struct dentry {int /*<<< orphan*/  d_count; struct inode* d_inode; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int ex_flags; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  NFSD_MAY_REMOVE ; 
 int NFSEXP_MSNFS ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct svc_rqst*,struct svc_fh*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct svc_fh*) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 struct dentry* FUNC9 (char*,struct dentry*,int) ; 
 int FUNC10 (struct inode*) ; 
 scalar_t__ nfserr_acces ; 
 scalar_t__ nfserr_noent ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (struct inode*,struct dentry*) ; 
 int FUNC13 (struct inode*,struct dentry*) ; 

__be32
FUNC14(struct svc_rqst *rqstp, struct svc_fh *fhp, int type,
				char *fname, int flen)
{
	struct dentry	*dentry, *rdentry;
	struct inode	*dirp;
	__be32		err;
	int		host_err;

	err = nfserr_acces;
	if (!flen || FUNC8(fname, flen))
		goto out;
	err = FUNC6(rqstp, fhp, S_IFDIR, NFSD_MAY_REMOVE);
	if (err)
		goto out;

	host_err = FUNC7(fhp);
	if (host_err)
		goto out_nfserr;

	FUNC5(fhp, I_MUTEX_PARENT);
	dentry = fhp->fh_dentry;
	dirp = dentry->d_inode;

	rdentry = FUNC9(fname, dentry, flen);
	host_err = FUNC1(rdentry);
	if (FUNC0(rdentry))
		goto out_nfserr;

	if (!rdentry->d_inode) {
		FUNC4(rdentry);
		err = nfserr_noent;
		goto out;
	}

	if (!type)
		type = rdentry->d_inode->i_mode & S_IFMT;

	host_err = FUNC10(rdentry->d_inode);
	if (host_err)
		goto out_put;
	if (type != S_IFDIR) {
#ifdef MSNFS
		if ((fhp->fh_export->ex_flags & NFSEXP_MSNFS) &&
			(atomic_read(&rdentry->d_count) > 1)) {
			host_err = -EPERM;
		} else
#endif
		host_err = FUNC13(dirp, rdentry);
	} else { /* It's RMDIR */
		host_err = FUNC12(dirp, rdentry);
	}

	if (!host_err)
		host_err = FUNC3(fhp);
out_put:
	FUNC4(rdentry);

out_nfserr:
	err = FUNC11(host_err);
out:
	return err;
}