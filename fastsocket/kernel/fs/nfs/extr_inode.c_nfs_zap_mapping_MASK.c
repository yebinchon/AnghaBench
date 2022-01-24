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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct address_space {scalar_t__ nrpages; } ;
struct TYPE_2__ {int /*<<< orphan*/  cache_validity; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *inode, struct address_space *mapping)
{
	if (mapping->nrpages != 0) {
		FUNC2(&inode->i_lock);
		FUNC0(inode)->cache_validity |= NFS_INO_INVALID_DATA;
		FUNC1(inode);
		FUNC3(&inode->i_lock);
	}
}