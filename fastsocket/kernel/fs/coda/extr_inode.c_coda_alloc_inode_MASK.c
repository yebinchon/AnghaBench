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
struct coda_inode_info {struct inode vfs_inode; scalar_t__ c_cached_perm; scalar_t__ c_uid; scalar_t__ c_flags; int /*<<< orphan*/  c_fid; } ;
struct CodaFid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  coda_inode_cachep ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct coda_inode_info *ei;
	ei = (struct coda_inode_info *)FUNC0(coda_inode_cachep, GFP_KERNEL);
	if (!ei)
		return NULL;
	FUNC1(&ei->c_fid, 0, sizeof(struct CodaFid));
	ei->c_flags = 0;
	ei->c_uid = 0;
	ei->c_cached_perm = 0;
	return &ei->vfs_inode;
}