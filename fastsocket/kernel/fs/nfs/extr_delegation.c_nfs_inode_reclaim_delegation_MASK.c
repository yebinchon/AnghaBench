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
struct rpc_cred {int dummy; } ;
struct nfs_openres {int /*<<< orphan*/  maxsize; int /*<<< orphan*/  delegation_type; int /*<<< orphan*/  delegation; } ;
struct nfs_delegation {int /*<<< orphan*/  lock; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; struct rpc_cred* cred; int /*<<< orphan*/  maxsize; int /*<<< orphan*/  stateid; int /*<<< orphan*/ * inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  delegation_state; int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_NEED_RECLAIM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rpc_cred* FUNC2 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct rpc_cred*,struct nfs_openres*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_cred*) ; 
 struct nfs_delegation* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct inode *inode, struct rpc_cred *cred,
				  struct nfs_openres *res)
{
	struct nfs_delegation *delegation;
	struct rpc_cred *oldcred = NULL;

	FUNC7();
	delegation = FUNC6(FUNC0(inode)->delegation);
	if (delegation != NULL) {
		FUNC9(&delegation->lock);
		if (delegation->inode != NULL) {
			FUNC3(&delegation->stateid, &res->delegation);
			delegation->type = res->delegation_type;
			delegation->maxsize = res->maxsize;
			oldcred = delegation->cred;
			delegation->cred = FUNC2(cred);
			FUNC1(NFS_DELEGATION_NEED_RECLAIM,
				  &delegation->flags);
			FUNC0(inode)->delegation_state = delegation->type;
			FUNC10(&delegation->lock);
			FUNC5(oldcred);
			FUNC8();
		} else {
			/* We appear to have raced with a delegation return. */
			FUNC10(&delegation->lock);
			FUNC8();
			FUNC4(inode, cred, res);
		}
	} else {
		FUNC8();
	}
}