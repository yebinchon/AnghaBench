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
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {scalar_t__ nrpages; TYPE_1__* a_ops; struct inode* host; } ;
typedef  int ssize_t ;
typedef  size_t pgoff_t ;
typedef  size_t loff_t ;
struct TYPE_2__ {int (* direct_IO ) (int /*<<< orphan*/ ,struct kiocb*,struct iovec const*,size_t,unsigned long) ;} ;

/* Variables and functions */
 int EBUSY ; 
 size_t PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC1 (struct address_space*,size_t,size_t) ; 
 size_t FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,size_t) ; 
 int FUNC4 (struct address_space*,size_t,size_t) ; 
 size_t FUNC5 (struct iovec const*,unsigned long) ; 
 unsigned long FUNC6 (struct iovec*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct kiocb*,struct iovec const*,size_t,unsigned long) ; 

ssize_t
FUNC9(struct kiocb *iocb, const struct iovec *iov,
		unsigned long *nr_segs, loff_t pos, loff_t *ppos,
		size_t count, size_t ocount)
{
	struct file	*file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	struct inode	*inode = mapping->host;
	ssize_t		written;
	size_t		write_len;
	pgoff_t		end;

	if (count != ocount)
		*nr_segs = FUNC6((struct iovec *)iov, *nr_segs, count);

	write_len = FUNC5(iov, *nr_segs);
	end = (pos + write_len - 1) >> PAGE_CACHE_SHIFT;

	written = FUNC1(mapping, pos, pos + write_len - 1);
	if (written)
		goto out;

	/*
	 * After a write we want buffered reads to be sure to go to disk to get
	 * the new data.  We invalidate clean cached page from the region we're
	 * about to write.  We do this *before* the write so that we can return
	 * without clobbering -EIOCBQUEUED from ->direct_IO().
	 */
	if (mapping->nrpages) {
		written = FUNC4(mapping,
					pos >> PAGE_CACHE_SHIFT, end);
		/*
		 * If a page can not be invalidated, return 0 to fall back
		 * to buffered write.
		 */
		if (written) {
			if (written == -EBUSY)
				return 0;
			goto out;
		}
	}

	written = mapping->a_ops->direct_IO(WRITE, iocb, iov, pos, *nr_segs);

	/*
	 * Finally, try again to invalidate clean pages which might have been
	 * cached by non-direct readahead, or faulted in by get_user_pages()
	 * if the source of the write was an mmap'ed region of the file
	 * we're writing.  Either one is a pretty crazy thing to do,
	 * so we don't support it 100%.  If this invalidation
	 * fails, tough, the write still worked...
	 */
	if (mapping->nrpages) {
		FUNC4(mapping,
					      pos >> PAGE_CACHE_SHIFT, end);
	}

	if (written > 0) {
		loff_t end = pos + written;
		if (end > FUNC2(inode) && !FUNC0(inode->i_mode)) {
			FUNC3(inode,  end);
			FUNC7(inode);
		}
		*ppos = end;
	}
out:
	return written;
}