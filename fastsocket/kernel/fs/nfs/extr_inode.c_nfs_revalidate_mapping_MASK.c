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
struct nfs_inode {int cache_validity; } ;
struct inode {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC3 (struct inode*,struct address_space*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 

int FUNC5(struct inode *inode, struct address_space *mapping)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	int ret = 0;

	if (FUNC4(inode)) {
		ret = FUNC2(FUNC1(inode), inode);
		if (ret < 0)
			goto out;
	}
	if (nfsi->cache_validity & NFS_INO_INVALID_DATA)
		ret = FUNC3(inode, mapping);
out:
	return ret;
}