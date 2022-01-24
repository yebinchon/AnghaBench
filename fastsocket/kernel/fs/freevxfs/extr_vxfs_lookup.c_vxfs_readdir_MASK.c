#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct vxfs_direct {char* d_name; int d_namelen; int /*<<< orphan*/  d_ino; int /*<<< orphan*/  d_reclen; } ;
struct vxfs_dirblk {int dummy; } ;
struct super_block {scalar_t__ s_blocksize; scalar_t__ s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_2__ f_path; } ;
typedef  scalar_t__ loff_t ;
typedef  int (* filldir_t ) (void*,char*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  scalar_t__ caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  vii_dotdot; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ PAGE_CACHE_MASK ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct vxfs_dirblk*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct page* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct vxfs_direct* FUNC12 (struct vxfs_direct*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int
FUNC14(struct file *fp, void *retp, filldir_t filler)
{
	struct inode		*ip = fp->f_path.dentry->d_inode;
	struct super_block	*sbp = ip->i_sb;
	u_long			bsize = sbp->s_blocksize;
	u_long			page, npages, block, pblocks, nblocks, offset;
	loff_t			pos;

	FUNC8();

	switch ((long)fp->f_pos) {
	case 0:
		if (filler(retp, ".", 1, fp->f_pos, ip->i_ino, DT_DIR) < 0)
			goto out;
		fp->f_pos++;
		/* fallthrough */
	case 1:
		if (filler(retp, "..", 2, fp->f_pos, FUNC5(ip)->vii_dotdot, DT_DIR) < 0)
			goto out;
		fp->f_pos++;
		/* fallthrough */
	}

	pos = fp->f_pos - 2;
	
	if (pos > FUNC4(ip->i_size)) {
		FUNC10();
		return 0;
	}

	npages = FUNC7(ip);
	nblocks = FUNC6(ip);
	pblocks = FUNC1(sbp);

	page = pos >> PAGE_CACHE_SHIFT;
	offset = pos & ~PAGE_CACHE_MASK;
	block = (u_long)(pos >> sbp->s_blocksize_bits) % pblocks;

	for (; page < npages; page++, block = 0) {
		caddr_t			kaddr;
		struct page		*pp;

		pp = FUNC11(ip->i_mapping, page);
		if (FUNC0(pp))
			continue;
		kaddr = (caddr_t)FUNC9(pp);

		for (; block <= nblocks && block <= pblocks; block++) {
			caddr_t			baddr, limit;
			struct vxfs_dirblk	*dbp;
			struct vxfs_direct	*de;

			baddr = kaddr + (block * bsize);
			limit = baddr + bsize - FUNC3(1);
	
			dbp = (struct vxfs_dirblk *)baddr;
			de = (struct vxfs_direct *)
				(offset ?
				 (kaddr + offset) :
				 (baddr + FUNC2(dbp)));

			for (; (caddr_t)de <= limit; de = FUNC12(de)) {
				int	over;

				if (!de->d_reclen)
					break;
				if (!de->d_ino)
					continue;

				offset = (caddr_t)de - kaddr;
				over = filler(retp, de->d_name, de->d_namelen,
					((page << PAGE_CACHE_SHIFT) | offset) + 2,
					de->d_ino, DT_UNKNOWN);
				if (over) {
					FUNC13(pp);
					goto done;
				}
			}
			offset = 0;
		}
		FUNC13(pp);
		offset = 0;
	}

done:
	fp->f_pos = ((page << PAGE_CACHE_SHIFT) | offset) + 2;
out:
	FUNC10();
	return 0;
}