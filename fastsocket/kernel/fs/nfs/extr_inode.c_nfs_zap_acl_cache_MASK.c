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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  cache_validity; } ;
struct TYPE_3__ {void (* clear_acl_cache ) (struct inode*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_ACL ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *inode)
{
	void (*clear_acl_cache)(struct inode *);

	clear_acl_cache = FUNC1(inode)->clear_acl_cache;
	if (clear_acl_cache != NULL)
		clear_acl_cache(inode);
	FUNC2(&inode->i_lock);
	FUNC0(inode)->cache_validity &= ~NFS_INO_INVALID_ACL;
	FUNC3(&inode->i_lock);
}