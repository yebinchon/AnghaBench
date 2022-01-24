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
struct nfs_inode {int /*<<< orphan*/  cookieverf; int /*<<< orphan*/  cache_validity; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_mode; } ;
struct address_space {scalar_t__ nrpages; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_DATAINVALIDATE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_DATA ; 
 int /*<<< orphan*/  PAGECACHE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long long) ; 
 int FUNC5 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct address_space *mapping)
{
	struct nfs_inode *nfsi = FUNC1(inode);
	int ret;

	if (mapping->nrpages != 0) {
		if (FUNC3(inode->i_mode)) {
			ret = FUNC9(mapping);
			if (ret < 0)
				return ret;
		}
		ret = FUNC5(mapping);
		if (ret < 0)
			return ret;
	}
	FUNC10(&inode->i_lock);
	nfsi->cache_validity &= ~NFS_INO_INVALID_DATA;
	if (FUNC2(inode->i_mode))
		FUNC6(nfsi->cookieverf, 0, sizeof(nfsi->cookieverf));
	FUNC11(&inode->i_lock);
	FUNC8(inode, NFSIOS_DATAINVALIDATE);
	FUNC7(inode);
	FUNC4(PAGECACHE, "NFS: (%s/%Ld) data cache invalidated\n",
			inode->i_sb->s_id, (long long)FUNC0(inode));
	return 0;
}