#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {int dummy; } ;
struct nfs_inode {int cache_validity; int /*<<< orphan*/  flags; } ;
struct nfs_fattr {int dummy; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int (* getattr ) (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  NFSIOS_INODEREVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct nfs_inode* FUNC2 (struct inode*) ; 
 int NFS_INO_INVALID_ACL ; 
 int /*<<< orphan*/  NFS_INO_STALE ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long long,...) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 struct nfs_fattr* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*) ; 

int
FUNC16(struct nfs_server *server, struct inode *inode)
{
	int		 status = -ESTALE;
	struct nfs_fattr *fattr = NULL;
	struct nfs_inode *nfsi = FUNC2(inode);

	FUNC6(PAGECACHE, "NFS: revalidating (%s/%Ld)\n",
		inode->i_sb->s_id, (long long)FUNC1(inode));

	if (FUNC7(inode))
		goto out;
	if (FUNC4(inode))
		goto out;

	status = -ENOMEM;
	fattr = FUNC8();
	if (fattr == NULL)
		goto out;

	FUNC10(inode, NFSIOS_INODEREVALIDATE);
	status = FUNC3(inode)->getattr(server, FUNC0(inode), fattr);
	if (status != 0) {
		FUNC6(PAGECACHE, "nfs_revalidate_inode: (%s/%Ld) getattr failed, error=%d\n",
			 inode->i_sb->s_id,
			 (long long)FUNC1(inode), status);
		if (status == -ESTALE) {
			FUNC13(inode);
			if (!FUNC5(inode->i_mode))
				FUNC14(NFS_INO_STALE, &FUNC2(inode)->flags);
		}
		goto out;
	}

	status = FUNC11(inode, fattr);
	if (status) {
		FUNC6(PAGECACHE, "nfs_revalidate_inode: (%s/%Ld) refresh failed, error=%d\n",
			 inode->i_sb->s_id,
			 (long long)FUNC1(inode), status);
		goto out;
	}

	if (nfsi->cache_validity & NFS_INO_INVALID_ACL)
		FUNC12(inode);

	FUNC6(PAGECACHE, "NFS: (%s/%Ld) revalidation complete\n",
		inode->i_sb->s_id,
		(long long)FUNC1(inode));

 out:
	FUNC9(fattr);
	return status;
}