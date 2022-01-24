#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct nfsd4_open_downgrade {scalar_t__ od_stateowner; int /*<<< orphan*/  od_stateid; int /*<<< orphan*/  od_share_deny; int /*<<< orphan*/  od_share_access; int /*<<< orphan*/  od_seqid; } ;
struct TYPE_6__ {TYPE_2__* fh_dentry; } ;
struct nfsd4_compound_state {scalar_t__ replay_owner; int /*<<< orphan*/  minorversion; TYPE_3__ current_fh; } ;
struct nfs4_stateid {int st_access_bmap; int st_deny_bmap; int /*<<< orphan*/  st_stateid; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPEN_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_stateid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfsd4_compound_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,struct nfs4_stateid**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__be32
FUNC12(struct svc_rqst *rqstp,
		     struct nfsd4_compound_state *cstate,
		     struct nfsd4_open_downgrade *od)
{
	__be32 status;
	struct nfs4_stateid *stp;

	FUNC2("NFSD: nfsd4_open_downgrade on file %.*s\n", 
			(int)cstate->current_fh.fh_dentry->d_name.len,
			cstate->current_fh.fh_dentry->d_name.name);

	if (!FUNC0(od->od_share_access, cstate->minorversion)
			|| !FUNC1(od->od_share_deny))
		return nfserr_inval;

	FUNC6();
	if ((status = FUNC7(cstate,
					od->od_seqid,
					&od->od_stateid, 
					OPEN_STATE,
					&od->od_stateowner, &stp, NULL)))
		goto out; 

	status = nfserr_inval;
	if (!FUNC10(od->od_share_access, &stp->st_access_bmap)) {
		FUNC2("NFSD:access not a subset current bitmap: 0x%lx, input access=%08x\n",
			stp->st_access_bmap, od->od_share_access);
		goto out;
	}
	if (!FUNC10(od->od_share_deny, &stp->st_deny_bmap)) {
		FUNC2("NFSD:deny not a subset current bitmap: 0x%lx, input deny=%08x\n",
			stp->st_deny_bmap, od->od_share_deny);
		goto out;
	}
	FUNC4(stp, od->od_share_access);

	FUNC9(od->od_share_deny, &stp->st_deny_bmap);

	FUNC11(&stp->st_stateid);
	FUNC3(&od->od_stateid, &stp->st_stateid, sizeof(stateid_t));
	status = nfs_ok;
out:
	if (od->od_stateowner) {
		FUNC5(od->od_stateowner);
		cstate->replay_owner = od->od_stateowner;
	}
	FUNC8();
	return status;
}