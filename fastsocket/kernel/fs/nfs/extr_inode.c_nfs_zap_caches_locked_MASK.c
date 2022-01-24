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
struct nfs_inode {int cache_validity; int /*<<< orphan*/  attrtimeo_timestamp; int /*<<< orphan*/  attrtimeo; } ;
struct inode {int i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_ATTRINVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int NFS_INO_INVALID_ACCESS ; 
 int NFS_INO_INVALID_ACL ; 
 int NFS_INO_INVALID_ATTR ; 
 int NFS_INO_INVALID_DATA ; 
 int NFS_INO_REVAL_PAGECACHE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC1(inode);
	int mode = inode->i_mode;

	FUNC8(inode, NFSIOS_ATTRINVALIDATE);

	nfsi->attrtimeo = FUNC2(inode);
	nfsi->attrtimeo_timestamp = jiffies;

	FUNC6(FUNC0(inode), 0, sizeof(FUNC0(inode)));
	if (FUNC5(mode) || FUNC3(mode) || FUNC4(mode)) {
		nfsi->cache_validity |= NFS_INO_INVALID_ATTR|NFS_INO_INVALID_DATA|NFS_INO_INVALID_ACCESS|NFS_INO_INVALID_ACL|NFS_INO_REVAL_PAGECACHE;
		FUNC7(inode);
	} else {
		nfsi->cache_validity |= NFS_INO_INVALID_ATTR|NFS_INO_INVALID_ACCESS|NFS_INO_INVALID_ACL|NFS_INO_REVAL_PAGECACHE;
	}
}