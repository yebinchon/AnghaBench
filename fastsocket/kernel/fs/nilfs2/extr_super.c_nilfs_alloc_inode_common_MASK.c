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
struct the_nilfs {int /*<<< orphan*/  ns_bdi; } ;
struct inode {int i_version; } ;
struct nilfs_inode_info {struct inode vfs_inode; int /*<<< orphan*/  i_btnode_cache; scalar_t__ i_state; int /*<<< orphan*/ * i_bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct nilfs_inode_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_inode_cachep ; 

struct inode *FUNC2(struct the_nilfs *nilfs)
{
	struct nilfs_inode_info *ii;

	ii = FUNC0(nilfs_inode_cachep, GFP_NOFS);
	if (!ii)
		return NULL;
	ii->i_bh = NULL;
	ii->i_state = 0;
	ii->vfs_inode.i_version = 1;
	FUNC1(&ii->i_btnode_cache, nilfs->ns_bdi);
	return &ii->vfs_inode;
}