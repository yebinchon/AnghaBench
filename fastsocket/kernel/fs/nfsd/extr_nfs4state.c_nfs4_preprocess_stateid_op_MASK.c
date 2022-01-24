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
struct svc_fh {TYPE_1__* fh_dentry; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
struct nfs4_stateid {int /*<<< orphan*/  st_file; TYPE_2__* st_stateowner; int /*<<< orphan*/  st_stateid; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_file; int /*<<< orphan*/  dl_client; int /*<<< orphan*/  dl_stateid; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  so_client; int /*<<< orphan*/  so_confirmed; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HAS_SESSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int RD_STATE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct svc_fh*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nfs4_delegation* FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 
 struct file* FUNC7 (int /*<<< orphan*/ ) ; 
 struct nfs4_stateid* FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct file* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct nfs4_delegation*,int) ; 
 scalar_t__ FUNC13 (struct svc_fh*,struct nfs4_stateid*) ; 
 scalar_t__ FUNC14 (struct nfs4_stateid*,int) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC15 (struct nfsd4_compound_state*) ; 
 scalar_t__ nfserr_bad_stateid ; 
 scalar_t__ nfserr_expired ; 
 scalar_t__ nfserr_grace ; 
 scalar_t__ nfserr_stale_stateid ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__be32
FUNC17(struct nfsd4_compound_state *cstate,
			   stateid_t *stateid, int flags, struct file **filpp)
{
	struct nfs4_stateid *stp = NULL;
	struct nfs4_delegation *dp = NULL;
	struct svc_fh *current_fh = &cstate->current_fh;
	struct inode *ino = current_fh->fh_dentry->d_inode;
	__be32 status;

	if (filpp)
		*filpp = NULL;

	if (FUNC10(ino))
		return nfserr_grace;

	if (FUNC15(cstate))
		flags |= HAS_SESSION;

	if (FUNC3(stateid) || FUNC1(stateid))
		return FUNC4(current_fh, stateid, flags);

	status = nfserr_stale_stateid;
	if (FUNC2(stateid)) 
		goto out;

	/*
	 * We assume that any stateid that has the current boot time,
	 * but that we can't find, is expired:
	 */
	status = nfserr_expired;
	if (FUNC11(stateid)) {
		dp = FUNC6(ino, stateid);
		if (!dp)
			goto out;
		status = FUNC5(stateid, &dp->dl_stateid,
						  flags);
		if (status)
			goto out;
		status = FUNC12(dp, flags);
		if (status)
			goto out;
		FUNC16(dp->dl_client);
		if (filpp)
			*filpp = FUNC7(dp->dl_file);
		FUNC0(!*filpp);
	} else { /* open or lock stateid */
		stp = FUNC8(stateid, flags);
		if (!stp)
			goto out;
		status = nfserr_bad_stateid;
		if (FUNC13(current_fh, stp))
			goto out;
		if (!stp->st_stateowner->so_confirmed)
			goto out;
		status = FUNC5(stateid, &stp->st_stateid,
						  flags);
		if (status)
			goto out;
		status = FUNC14(stp, flags);
		if (status)
			goto out;
		FUNC16(stp->st_stateowner->so_client);
		if (filpp) {
			if (flags & RD_STATE)
				*filpp = FUNC7(stp->st_file);
			else
				*filpp = FUNC9(stp->st_file);
		}
	}
	status = nfs_ok;
out:
	return status;
}