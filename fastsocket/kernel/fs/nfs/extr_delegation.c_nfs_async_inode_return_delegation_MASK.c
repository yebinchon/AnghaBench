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
struct nfs_delegation {int /*<<< orphan*/  stateid; } ;
struct nfs_client {TYPE_1__* cl_mvops; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
struct TYPE_6__ {int /*<<< orphan*/  delegation; } ;
struct TYPE_5__ {struct nfs_client* nfs_client; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* match_stateid ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC9(struct inode *inode,
				      const nfs4_stateid *stateid)
{
	struct nfs_client *clp = FUNC1(inode)->nfs_client;
	struct nfs_delegation *delegation;

	FUNC2(inode->i_mapping);

	FUNC6();
	delegation = FUNC5(FUNC0(inode)->delegation);

	if (!clp->cl_mvops->match_stateid(&delegation->stateid, stateid)) {
		FUNC7();
		return -ENOENT;
	}
	FUNC4(delegation);
	FUNC7();

	FUNC3(clp);
	return 0;
}