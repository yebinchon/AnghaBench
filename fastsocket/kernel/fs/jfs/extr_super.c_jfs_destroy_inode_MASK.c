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
struct jfs_inode_info {int active_ag; int /*<<< orphan*/  ag_lock; int /*<<< orphan*/  anon_inode_list; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct bmap {int /*<<< orphan*/ * db_active; } ;
struct TYPE_2__ {struct bmap* bmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jfs_inode_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct jfs_inode_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct inode *inode)
{
	struct jfs_inode_info *ji = FUNC1(inode);

	FUNC0(!FUNC5(&ji->anon_inode_list));

	FUNC6(&ji->ag_lock);
	if (ji->active_ag != -1) {
		struct bmap *bmap = FUNC2(inode->i_sb)->bmap;
		FUNC3(&bmap->db_active[ji->active_ag]);
		ji->active_ag = -1;
	}
	FUNC7(&ji->ag_lock);
	FUNC4(jfs_inode_cachep, ji);
}