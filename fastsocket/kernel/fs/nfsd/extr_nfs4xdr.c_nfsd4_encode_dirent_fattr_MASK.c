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
struct svc_export {int ex_flags; } ;
struct nfsd4_readdir {int /*<<< orphan*/  rd_rqstp; int /*<<< orphan*/  rd_bmval; TYPE_1__* rd_fhp; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  fh_dentry; struct svc_export* fh_export; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int NFSEXP_V4ROOT ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct svc_export*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_export*) ; 
 struct dentry* FUNC7 (char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct svc_export*,struct dentry*,scalar_t__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct dentry**,struct svc_export**) ; 
 scalar_t__ FUNC10 (struct dentry*,struct svc_export*) ; 
 scalar_t__ nfserr_noent ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static __be32
FUNC12(struct nfsd4_readdir *cd,
		const char *name, int namlen, __be32 *p, int *buflen)
{
	struct svc_export *exp = cd->rd_fhp->fh_export;
	struct dentry *dentry;
	__be32 nfserr;
	int ignore_crossmnt = 0;

	dentry = FUNC7(name, cd->rd_fhp->fh_dentry, namlen);
	if (FUNC0(dentry))
		return FUNC11(FUNC1(dentry));
	if (!dentry->d_inode) {
		/*
		 * nfsd_buffered_readdir drops the i_mutex between
		 * readdir and calling this callback, leaving a window
		 * where this directory entry could have gone away.
		 */
		FUNC4(dentry);
		return nfserr_noent;
	}

	FUNC5(exp);
	/*
	 * In the case of a mountpoint, the client may be asking for
	 * attributes that are only properties of the underlying filesystem
	 * as opposed to the cross-mounted file system. In such a case,
	 * we will not follow the cross mount and will fill the attribtutes
	 * directly from the mountpoint dentry.
	 */
	if (FUNC10(dentry, exp)) {
		int err;

		if (!(exp->ex_flags & NFSEXP_V4ROOT)
				&& !FUNC2(cd->rd_bmval)) {
			ignore_crossmnt = 1;
			goto out_encode;
		}
		/*
		 * Why the heck aren't we just using nfsd_lookup??
		 * Different "."/".." handling?  Something else?
		 * At least, add a comment here to explain....
		 */
		err = FUNC9(cd->rd_rqstp, &dentry, &exp);
		if (err) {
			nfserr = FUNC11(err);
			goto out_put;
		}
		nfserr = FUNC3(exp, cd->rd_rqstp);
		if (nfserr)
			goto out_put;

	}
out_encode:
	nfserr = FUNC8(NULL, exp, dentry, p, buflen, cd->rd_bmval,
					cd->rd_rqstp, ignore_crossmnt);
out_put:
	FUNC4(dentry);
	FUNC6(exp);
	return nfserr;
}