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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hugetlbfs_sb_info {int dummy; } ;
struct hugetlbfs_inode_info {struct inode vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hugetlbfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct hugetlbfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct hugetlbfs_sb_info*) ; 
 int /*<<< orphan*/  hugetlbfs_inode_cachep ; 
 struct hugetlbfs_inode_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb)
{
	struct hugetlbfs_sb_info *sbinfo = FUNC0(sb);
	struct hugetlbfs_inode_info *p;

	if (FUNC4(!FUNC1(sbinfo)))
		return NULL;
	p = FUNC3(hugetlbfs_inode_cachep, GFP_KERNEL);
	if (FUNC4(!p)) {
		FUNC2(sbinfo);
		return NULL;
	}
	return &p->vfs_inode;
}