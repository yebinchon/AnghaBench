#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct TYPE_9__ {TYPE_2__* fh_dentry; } ;
struct nfsd4_compound_state {TYPE_4__* replay_owner; TYPE_3__ current_fh; } ;
struct nfsd4_close {TYPE_4__* cl_stateowner; int /*<<< orphan*/  cl_stateid; int /*<<< orphan*/  cl_seqid; } ;
struct nfs4_stateid {int /*<<< orphan*/  st_stateid; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_10__ {int /*<<< orphan*/  so_stateids; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int CLOSE_STATE ; 
 int OPEN_STATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfsd4_compound_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_4__**,struct nfs4_stateid**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_stateid*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__be32
FUNC10(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	    struct nfsd4_close *close)
{
	__be32 status;
	struct nfs4_stateid *stp;

	FUNC0("NFSD: nfsd4_close on file %.*s\n", 
			(int)cstate->current_fh.fh_dentry->d_name.len,
			cstate->current_fh.fh_dentry->d_name.name);

	FUNC5();
	/* check close_lru for replay */
	if ((status = FUNC6(cstate,
					close->cl_seqid,
					&close->cl_stateid, 
					OPEN_STATE | CLOSE_STATE,
					&close->cl_stateowner, &stp, NULL)))
		goto out; 
	status = nfs_ok;
	FUNC9(&stp->st_stateid);
	FUNC2(&close->cl_stateid, &stp->st_stateid, sizeof(stateid_t));

	/* release_stateid() calls nfsd_close() if needed */
	FUNC8(stp);

	/* place unused nfs4_stateowners on so_close_lru list to be
	 * released by the laundromat service after the lease period
	 * to enable us to handle CLOSE replay
	 */
	if (FUNC1(&close->cl_stateowner->so_stateids))
		FUNC3(close->cl_stateowner);
out:
	if (close->cl_stateowner) {
		FUNC4(close->cl_stateowner);
		cstate->replay_owner = close->cl_stateowner;
	}
	FUNC7();
	return status;
}