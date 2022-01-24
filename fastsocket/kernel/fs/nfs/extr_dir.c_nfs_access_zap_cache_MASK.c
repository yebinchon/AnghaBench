#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  access_cache_inode_lru; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ACL_LRU_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_access_lru_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct inode *inode)
{
	FUNC0(head);

	if (FUNC8(NFS_INO_ACL_LRU_SET, &FUNC1(inode)->flags) == 0)
		return;
	/* Remove from global LRU init */
	FUNC5(&nfs_access_lru_lock);
	if (FUNC7(NFS_INO_ACL_LRU_SET, &FUNC1(inode)->flags))
		FUNC3(&FUNC1(inode)->access_cache_inode_lru);

	FUNC5(&inode->i_lock);
	FUNC2(FUNC1(inode), &head);
	FUNC6(&inode->i_lock);
	FUNC6(&nfs_access_lru_lock);
	FUNC4(&head);
}