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
typedef  int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd4_open {int op_share_access; int op_share_deny; } ;
struct nfs4_stateid {int /*<<< orphan*/  st_deny_bmap; int /*<<< orphan*/  st_access_bmap; } ;
struct nfs4_file {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFS4_SHARE_WANT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_file*,int) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct nfs4_file*,struct svc_fh*,int) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC4 (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC6(struct svc_rqst *rqstp, struct nfs4_file *fp, struct svc_fh *cur_fh, struct nfs4_stateid *stp, struct nfsd4_open *open)
{
	u32 op_share_access = open->op_share_access & ~NFS4_SHARE_WANT_MASK;
	bool new_access;
	__be32 status;

	new_access = !FUNC5(op_share_access, &stp->st_access_bmap);
	if (new_access) {
		status = FUNC3(rqstp, fp, cur_fh, op_share_access);
		if (status)
			return status;
	}
	status = FUNC4(rqstp, cur_fh, open);
	if (status) {
		if (new_access) {
			int oflag = FUNC1(op_share_access);
			FUNC2(fp, oflag);
		}
		return status;
	}
	/* remember the open */
	FUNC0(op_share_access, &stp->st_access_bmap);
	FUNC0(open->op_share_deny, &stp->st_deny_bmap);

	return nfs_ok;
}