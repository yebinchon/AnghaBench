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
struct nfsd4_lock {scalar_t__ lk_new_lock_seqid; int /*<<< orphan*/  lk_new_owner; } ;
struct nfs4_replay {int /*<<< orphan*/  rp_ibuf; int /*<<< orphan*/  rp_buf; scalar_t__ rp_buflen; int /*<<< orphan*/  rp_status; } ;
struct nfs4_stateowner {int so_confirmed; struct nfs4_replay so_replay; scalar_t__ so_seqid; struct nfs4_client* so_client; scalar_t__ so_id; scalar_t__ so_is_open_owner; int /*<<< orphan*/  so_perstateid; int /*<<< orphan*/  so_strhash; int /*<<< orphan*/  so_idhash; scalar_t__ so_time; int /*<<< orphan*/  so_close_lru; int /*<<< orphan*/  so_stateids; int /*<<< orphan*/  so_perclient; } ;
struct nfs4_stateid {int /*<<< orphan*/  st_lockowners; } ;
struct nfs4_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfs4_stateowner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_ownerid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lock_ownerid_hashtbl ; 
 int /*<<< orphan*/ * lock_ownerstr_hashtbl ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_serverfault ; 

__attribute__((used)) static struct nfs4_stateowner *
FUNC4(unsigned int strhashval, struct nfs4_client *clp, struct nfs4_stateid *open_stp, struct nfsd4_lock *lock) {
	struct nfs4_stateowner *sop;
	struct nfs4_replay *rp;
	unsigned int idhashval;

	if (!(sop = FUNC1(&lock->lk_new_owner)))
		return NULL;
	idhashval = FUNC3(current_ownerid);
	FUNC0(&sop->so_idhash);
	FUNC0(&sop->so_strhash);
	FUNC0(&sop->so_perclient);
	FUNC0(&sop->so_stateids);
	FUNC0(&sop->so_perstateid);
	FUNC0(&sop->so_close_lru); /* not used */
	sop->so_time = 0;
	FUNC2(&sop->so_idhash, &lock_ownerid_hashtbl[idhashval]);
	FUNC2(&sop->so_strhash, &lock_ownerstr_hashtbl[strhashval]);
	FUNC2(&sop->so_perstateid, &open_stp->st_lockowners);
	sop->so_is_open_owner = 0;
	sop->so_id = current_ownerid++;
	sop->so_client = clp;
	/* It is the openowner seqid that will be incremented in encode in the
	 * case of new lockowners; so increment the lock seqid manually: */
	sop->so_seqid = lock->lk_new_lock_seqid + 1;
	sop->so_confirmed = 1;
	rp = &sop->so_replay;
	rp->rp_status = nfserr_serverfault;
	rp->rp_buflen = 0;
	rp->rp_buf = rp->rp_ibuf;
	return sop;
}