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
struct the_nilfs {struct inode* ns_gc_dat; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_btnode_cache; scalar_t__ i_flags; } ;
struct inode {int /*<<< orphan*/ * i_mapping; int /*<<< orphan*/  i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_CLEAR ; 
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct the_nilfs *nilfs)
{
	struct inode *gcdat = nilfs->ns_gc_dat;
	struct nilfs_inode_info *gii = FUNC0(gcdat);

	gcdat->i_state = I_CLEAR;
	gii->i_flags = 0;

	FUNC1(gcdat->i_mapping, 0);
	FUNC1(&gii->i_btnode_cache, 0);
}