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
struct smb_sb_info {TYPE_1__* ops; } ;
struct page {scalar_t__ index; } ;
struct inode {unsigned long i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
typedef  unsigned long loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  fileid; } ;
struct TYPE_3__ {int (* write ) (struct inode*,unsigned long,unsigned int,char*) ;} ;

/* Variables and functions */
 unsigned long PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  SMB_F_LOCALWRITE ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct smb_sb_info* FUNC6 (struct inode*) ; 
 unsigned int FUNC7 (struct smb_sb_info*) ; 
 int FUNC8 (struct inode*,unsigned long,unsigned int,char*) ; 

__attribute__((used)) static int
FUNC9(struct inode *inode, struct page *page,
		   unsigned long pageoffset, unsigned int count)
{
	loff_t offset;
	char *buffer = FUNC4(page) + pageoffset;
	struct smb_sb_info *server = FUNC6(inode);
	unsigned int wsize = FUNC7(server);
	int ret = 0;

	offset = ((loff_t)page->index << PAGE_CACHE_SHIFT) + pageoffset;
	FUNC2("file ino=%ld, fileid=%d, count=%d@%Ld, wsize=%d\n",
		inode->i_ino, FUNC1(inode)->fileid, count, offset, wsize);

	do {
		int write_ret;

		if (count < wsize)
			wsize = count;

		write_ret = server->ops->write(inode, offset, wsize, buffer);
		if (write_ret < 0) {
			FUNC0("failed write, wsize=%d, write_ret=%d\n",
				 wsize, write_ret);
			ret = write_ret;
			break;
		}
		/* N.B. what if result < wsize?? */
#ifdef SMBFS_PARANOIA
		if (write_ret < wsize)
			PARANOIA("short write, wsize=%d, write_ret=%d\n",
				 wsize, write_ret);
#endif
		buffer += wsize;
		offset += wsize;
		count -= wsize;
		/*
		 * Update the inode now rather than waiting for a refresh.
		 */
		inode->i_mtime = inode->i_atime = FUNC3(inode->i_sb);
		FUNC1(inode)->flags |= SMB_F_LOCALWRITE;
		if (offset > inode->i_size)
			inode->i_size = offset;
	} while (count);

	FUNC5(page);
	return ret;
}