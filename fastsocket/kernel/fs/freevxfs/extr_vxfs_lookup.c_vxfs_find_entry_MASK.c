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
typedef  scalar_t__ u_long ;
struct vxfs_direct {int /*<<< orphan*/  d_ino; int /*<<< orphan*/  d_reclen; } ;
struct vxfs_dirblk {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; TYPE_2__* i_sb; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct vxfs_dirblk*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 struct page* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int,char const*,struct vxfs_direct*) ; 
 struct vxfs_direct* FUNC9 (struct vxfs_direct*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static struct vxfs_direct *
FUNC11(struct inode *ip, struct dentry *dp, struct page **ppp)
{
	u_long				npages, page, nblocks, pblocks, block;
	u_long				bsize = ip->i_sb->s_blocksize;
	const char			*name = dp->d_name.name;
	int				namelen = dp->d_name.len;

	npages = FUNC5(ip);
	nblocks = FUNC4(ip);
	pblocks = FUNC1(ip->i_sb);
	
	for (page = 0; page < npages; page++) {
		caddr_t			kaddr;
		struct page		*pp;

		pp = FUNC7(ip->i_mapping, page);
		if (FUNC0(pp))
			continue;
		kaddr = (caddr_t)FUNC6(pp);

		for (block = 0; block <= nblocks && block <= pblocks; block++) {
			caddr_t			baddr, limit;
			struct vxfs_dirblk	*dbp;
			struct vxfs_direct	*de;

			baddr = kaddr + (block * bsize);
			limit = baddr + bsize - FUNC3(1);
			
			dbp = (struct vxfs_dirblk *)baddr;
			de = (struct vxfs_direct *)(baddr + FUNC2(dbp));

			for (; (caddr_t)de <= limit; de = FUNC9(de)) {
				if (!de->d_reclen)
					break;
				if (!de->d_ino)
					continue;
				if (FUNC8(namelen, name, de)) {
					*ppp = pp;
					return (de);
				}
			}
		}
		FUNC10(pp);
	}

	return NULL;
}