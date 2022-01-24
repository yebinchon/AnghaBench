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
struct super_block {int dummy; } ;
struct nfs_inode {scalar_t__ fscache; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_2__ {int options; int /*<<< orphan*/  fscache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int NFS_OPTION_FSCACHE ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct super_block*,struct nfs_inode*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs_inode*) ; 
 int /*<<< orphan*/  nfs_fscache_inode_object_def ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct nfs_inode *nfsi = FUNC1(inode);

	if (nfsi->fscache || !FUNC0(inode))
		return;

	if ((FUNC2(sb)->options & NFS_OPTION_FSCACHE)) {
		nfsi->fscache = FUNC4(
			FUNC2(sb)->fscache,
			&nfs_fscache_inode_object_def,
			nfsi);

		FUNC3(FSCACHE, "NFS: get FH cookie (0x%p/0x%p/0x%p)\n",
			 sb, nfsi, nfsi->fscache);
	}
}