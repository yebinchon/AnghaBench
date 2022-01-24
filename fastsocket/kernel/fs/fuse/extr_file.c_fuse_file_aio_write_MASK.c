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
struct kiocb {size_t ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;
struct file {int f_flags; struct address_space* f_mapping; } ;
struct address_space {int /*<<< orphan*/ * backing_dev_info; struct inode* host; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * backing_dev_info; } ;

/* Variables and functions */
 int O_DIRECT ; 
 size_t PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERIFY_READ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* current ; 
 size_t FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 size_t FUNC4 (struct address_space*,size_t,size_t) ; 
 size_t FUNC5 (struct file*,struct address_space*,struct iov_iter*,size_t) ; 
 size_t FUNC6 (struct kiocb*,struct iovec const*,unsigned long*,size_t,size_t*,size_t,size_t) ; 
 size_t FUNC7 (struct iovec const*,unsigned long*,size_t*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct file*,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct iov_iter*,struct iovec const*,unsigned long,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC15(struct kiocb *iocb, const struct iovec *iov,
				   unsigned long nr_segs, loff_t pos)
{
	struct file *file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	size_t count = 0;
	size_t ocount = 0;
	ssize_t written = 0;
	ssize_t written_buffered = 0;
	struct inode *inode = mapping->host;
	ssize_t err;
	struct iov_iter i;
	loff_t endbyte = 0;

	FUNC1(iocb->ki_pos != pos);

	ocount = 0;
	err = FUNC7(iov, &nr_segs, &ocount, VERIFY_READ);
	if (err)
		return err;

	count = ocount;
	FUNC14(inode->i_sb);
	FUNC11(&inode->i_mutex);

	/* We can write back this queue in page reclaim */
	current->backing_dev_info = mapping->backing_dev_info;

	err = FUNC8(file, &pos, &count, FUNC0(inode->i_mode));
	if (err)
		goto out;

	if (count == 0)
		goto out;

	err = FUNC2(file);
	if (err)
		goto out;

	FUNC3(file);

	if (file->f_flags & O_DIRECT) {
		written = FUNC6(iocb, iov, &nr_segs,
						    pos, &iocb->ki_pos,
						    count, ocount);
		if (written < 0 || written == count)
			goto out;

		pos += written;
		count -= written;

		FUNC10(&i, iov, nr_segs, count, written);
		written_buffered = FUNC5(file, mapping, &i, pos);
		if (written_buffered < 0) {
			err = written_buffered;
			goto out;
		}
		endbyte = pos + written_buffered - 1;

		err = FUNC4(file->f_mapping, pos,
						   endbyte);
		if (err)
			goto out;

		FUNC9(file->f_mapping,
					 pos >> PAGE_CACHE_SHIFT,
					 endbyte >> PAGE_CACHE_SHIFT);

		written += written_buffered;
		iocb->ki_pos = pos + written_buffered;
	} else {
		FUNC10(&i, iov, nr_segs, count, 0);
		written = FUNC5(file, mapping, &i, pos);
		if (written >= 0)
			iocb->ki_pos = pos + written;
	}
out:
	current->backing_dev_info = NULL;
	FUNC12(&inode->i_mutex);
	FUNC13(inode->i_sb);

	return written ? written : err;
}