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
struct svc_rqst {int dummy; } ;
struct svc_fh {int /*<<< orphan*/  fh_export; struct dentry* fh_dentry; } ;
struct iattr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  NFSD_MAY_CREATE ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int FUNC2 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct svc_fh*,int /*<<< orphan*/ ,struct dentry*,struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_fh*) ; 
 scalar_t__ FUNC8 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct svc_fh*) ; 
 scalar_t__ FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC13 (char*,struct dentry*,int) ; 
 scalar_t__ nfserr_exist ; 
 scalar_t__ nfserr_noent ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct dentry*,char*) ; 

__be32
FUNC18(struct svc_rqst *rqstp, struct svc_fh *fhp,
				char *fname, int flen,
				char *path,  int plen,
				struct svc_fh *resfhp,
				struct iattr *iap)
{
	struct dentry	*dentry, *dnew;
	__be32		err, cerr;
	int		host_err;

	err = nfserr_noent;
	if (!flen || !plen)
		goto out;
	err = nfserr_exist;
	if (FUNC10(fname, flen))
		goto out;

	err = FUNC8(rqstp, fhp, S_IFDIR, NFSD_MAY_CREATE);
	if (err)
		goto out;

	host_err = FUNC9(fhp);
	if (host_err)
		goto out_nfserr;

	FUNC6(fhp);
	dentry = fhp->fh_dentry;
	dnew = FUNC13(fname, dentry, flen);
	host_err = FUNC1(dnew);
	if (FUNC0(dnew))
		goto out_nfserr;

	if (FUNC16(path[plen] != 0)) {
		char *path_alloced = FUNC12(plen+1, GFP_KERNEL);
		if (path_alloced == NULL)
			host_err = -ENOMEM;
		else {
			FUNC15(path_alloced, path, plen);
			path_alloced[plen] = 0;
			host_err = FUNC17(dentry->d_inode, dnew, path_alloced);
			FUNC11(path_alloced);
		}
	} else
		host_err = FUNC17(dentry->d_inode, dnew, path);
	err = FUNC14(host_err);
	if (!err)
		err = FUNC14(FUNC2(fhp));
	FUNC7(fhp);

	FUNC5(fhp);

	cerr = FUNC4(resfhp, fhp->fh_export, dnew, fhp);
	FUNC3(dnew);
	if (err==0) err = cerr;
out:
	return err;

out_nfserr:
	err = FUNC14(host_err);
	goto out;
}