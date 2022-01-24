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
struct nfs_inode {struct nfs_delegation* delegation; } ;
struct nfs_delegation {int type; int /*<<< orphan*/  lock; int /*<<< orphan*/  stateid; int /*<<< orphan*/  flags; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int fmode_t ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  NFS_DELEGATION_RETURNING ; 
 struct nfs_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC4 (struct nfs_delegation*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct nfs4_state *state, nfs4_stateid *open_stateid, nfs4_stateid *delegation, fmode_t fmode)
{
	struct nfs_inode *nfsi = FUNC0(state->inode);
	struct nfs_delegation *deleg_cur;
	int ret = 0;

	fmode &= (FMODE_READ|FMODE_WRITE);

	FUNC5();
	deleg_cur = FUNC4(nfsi->delegation);
	if (deleg_cur == NULL)
		goto no_delegation;

	FUNC7(&deleg_cur->lock);
	if (nfsi->delegation != deleg_cur ||
	   FUNC9(NFS_DELEGATION_RETURNING, &deleg_cur->flags) ||
	    (deleg_cur->type & fmode) != fmode)
		goto no_delegation_unlock;

	if (delegation == NULL)
		delegation = &deleg_cur->stateid;
	else if (!FUNC2(&deleg_cur->stateid, delegation))
		goto no_delegation_unlock;

	FUNC3(deleg_cur);
	FUNC1(state, open_stateid, &deleg_cur->stateid, fmode);
	ret = 1;
no_delegation_unlock:
	FUNC8(&deleg_cur->lock);
no_delegation:
	FUNC6();

	if (!ret && open_stateid != NULL) {
		FUNC1(state, open_stateid, NULL, fmode);
		ret = 1;
	}

	return ret;
}