#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* fh_dentry; } ;
typedef  TYPE_2__ svc_fh ;
struct svc_rqst {int dummy; } ;
struct posix_acl {int dummy; } ;
struct nfsd3_getaclres {int mask; struct posix_acl* acl_default; struct posix_acl* acl_access; int /*<<< orphan*/  fh; } ;
struct nfsd3_getaclargs {int mask; int /*<<< orphan*/  fh; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int NFS_ACL ; 
 int NFS_ACLCNT ; 
 int NFS_DFACL ; 
 int NFS_DFACLCNT ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_inval ; 
 scalar_t__ FUNC8 (int) ; 
 struct posix_acl* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct posix_acl*) ; 

__attribute__((used)) static __be32 FUNC11(struct svc_rqst * rqstp,
		struct nfsd3_getaclargs *argp, struct nfsd3_getaclres *resp)
{
	svc_fh *fh;
	struct posix_acl *acl;
	__be32 nfserr = 0;

	FUNC4("nfsd: GETACL(2acl)   %s\n", FUNC3(&argp->fh));

	fh = FUNC5(&resp->fh, &argp->fh);
	nfserr = FUNC6(rqstp, &resp->fh, 0, NFSD_MAY_NOP);
	if (nfserr)
		FUNC2(nfserr);

	if (argp->mask & ~(NFS_ACL|NFS_ACLCNT|NFS_DFACL|NFS_DFACLCNT))
		FUNC2(nfserr_inval);
	resp->mask = argp->mask;

	if (resp->mask & (NFS_ACL|NFS_ACLCNT)) {
		acl = FUNC7(fh, ACL_TYPE_ACCESS);
		if (FUNC0(acl)) {
			int err = FUNC1(acl);

			if (err == -ENODATA || err == -EOPNOTSUPP)
				acl = NULL;
			else {
				nfserr = FUNC8(err);
				goto fail;
			}
		}
		if (acl == NULL) {
			/* Solaris returns the inode's minimum ACL. */

			struct inode *inode = fh->fh_dentry->d_inode;
			acl = FUNC9(inode->i_mode, GFP_KERNEL);
		}
		resp->acl_access = acl;
	}
	if (resp->mask & (NFS_DFACL|NFS_DFACLCNT)) {
		/* Check how Solaris handles requests for the Default ACL
		   of a non-directory! */

		acl = FUNC7(fh, ACL_TYPE_DEFAULT);
		if (FUNC0(acl)) {
			int err = FUNC1(acl);

			if (err == -ENODATA || err == -EOPNOTSUPP)
				acl = NULL;
			else {
				nfserr = FUNC8(err);
				goto fail;
			}
		}
		resp->acl_default = acl;
	}

	/* resp->acl_{access,default} are released in nfssvc_release_getacl. */
	FUNC2(0);

fail:
	FUNC10(resp->acl_access);
	FUNC10(resp->acl_default);
	FUNC2(nfserr);
}