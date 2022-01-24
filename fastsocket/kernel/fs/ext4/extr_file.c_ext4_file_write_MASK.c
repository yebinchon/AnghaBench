#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kiocb {TYPE_3__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {scalar_t__ s_bitmap_maxbytes; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_aio_mutex; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {int f_flags; TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFBIG ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 struct ext4_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int O_DIRECT ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct iovec const*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ; 
 size_t FUNC6 (struct iovec const*,unsigned long) ; 
 unsigned long FUNC7 (struct iovec*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static ssize_t
FUNC12(struct kiocb *iocb, const struct iovec *iov,
		unsigned long nr_segs, loff_t pos)
{
	struct inode *inode = iocb->ki_filp->f_path.dentry->d_inode;
	int unaligned_aio = 0;
	ssize_t ret;

	/*
	 * If we have encountered a bitmap-format file, the size limit
	 * is smaller than s_maxbytes, which is for extent-mapped files.
	 */

	if (!(FUNC3(inode, EXT4_INODE_EXTENTS))) {
		struct ext4_sb_info *sbi = FUNC1(inode->i_sb);
		size_t length = FUNC6(iov, nr_segs);

		if ((pos > sbi->s_bitmap_maxbytes ||
		    (pos == sbi->s_bitmap_maxbytes && length > 0)))
			return -EFBIG;

		if (pos + length > sbi->s_bitmap_maxbytes) {
			nr_segs = FUNC7((struct iovec *)iov, nr_segs,
					      sbi->s_bitmap_maxbytes - pos);
		}
	} else if (FUNC11((iocb->ki_filp->f_flags & O_DIRECT) &&
		            !FUNC8(iocb)))
		unaligned_aio = FUNC4(inode, iov, nr_segs, pos);

	/* Unaligned direct AIO must be serialized; see comment above */
	if (unaligned_aio) {
		FUNC9(&FUNC0(inode)->i_aio_mutex);
		FUNC2(inode);
 	}

	ret = FUNC5(iocb, iov, nr_segs, pos);

	if (unaligned_aio)
		FUNC10(&FUNC0(inode)->i_aio_mutex);

	return ret;
}