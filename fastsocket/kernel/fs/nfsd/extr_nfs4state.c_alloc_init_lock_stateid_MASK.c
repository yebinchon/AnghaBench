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
struct nfs4_stateowner {int /*<<< orphan*/  so_id; int /*<<< orphan*/  so_stateids; } ;
struct TYPE_2__ {scalar_t__ si_generation; int /*<<< orphan*/  si_fileid; int /*<<< orphan*/  si_stateownerid; int /*<<< orphan*/  si_boot; } ;
struct nfs4_stateid {struct nfs4_stateid* st_openstp; int /*<<< orphan*/  st_deny_bmap; scalar_t__ st_access_bmap; TYPE_1__ st_stateid; struct nfs4_file* st_file; struct nfs4_stateowner* st_stateowner; int /*<<< orphan*/  st_perstateowner; int /*<<< orphan*/  st_perfile; int /*<<< orphan*/  st_hash; int /*<<< orphan*/  st_lockowners; } ;
struct nfs4_file {int /*<<< orphan*/  fi_id; int /*<<< orphan*/  fi_stateids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  boot_time ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lockstateid_hashtbl ; 
 struct nfs4_stateid* FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfs4_stateid *
FUNC5(struct nfs4_stateowner *sop, struct nfs4_file *fp, struct nfs4_stateid *open_stp)
{
	struct nfs4_stateid *stp;
	unsigned int hashval = FUNC4(sop->so_id, fp->fi_id);

	stp = FUNC3();
	if (stp == NULL)
		goto out;
	FUNC0(&stp->st_hash);
	FUNC0(&stp->st_perfile);
	FUNC0(&stp->st_perstateowner);
	FUNC0(&stp->st_lockowners); /* not used */
	FUNC2(&stp->st_hash, &lockstateid_hashtbl[hashval]);
	FUNC2(&stp->st_perfile, &fp->fi_stateids);
	FUNC2(&stp->st_perstateowner, &sop->so_stateids);
	stp->st_stateowner = sop;
	FUNC1(fp);
	stp->st_file = fp;
	stp->st_stateid.si_boot = boot_time;
	stp->st_stateid.si_stateownerid = sop->so_id;
	stp->st_stateid.si_fileid = fp->fi_id;
	stp->st_stateid.si_generation = 0;
	stp->st_access_bmap = 0;
	stp->st_deny_bmap = open_stp->st_deny_bmap;
	stp->st_openstp = open_stp;

out:
	return stp;
}