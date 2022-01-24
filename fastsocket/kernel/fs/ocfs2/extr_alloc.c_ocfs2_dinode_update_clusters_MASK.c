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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_inode_info {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_clusters; } ;
struct ocfs2_extent_tree {struct ocfs2_dinode* et_object; int /*<<< orphan*/  et_ci; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_clusters; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ocfs2_extent_tree *et,
					 u32 clusters)
{
	struct ocfs2_inode_info *oi = FUNC0(et->et_ci);
	struct ocfs2_dinode *di = et->et_object;

	FUNC1(&di->i_clusters, clusters);
	FUNC3(&oi->ip_lock);
	oi->ip_clusters = FUNC2(di->i_clusters);
	FUNC4(&oi->ip_lock);
}