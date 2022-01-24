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
struct pipe_inode_info {int nrbufs; int curbuf; int /*<<< orphan*/  fasync_readers; int /*<<< orphan*/  wait; int /*<<< orphan*/  waiting_writers; struct page* tmp_page; struct pipe_buffer* bufs; int /*<<< orphan*/  readers; } ;
struct pipe_buffer {int offset; int len; struct pipe_buf_operations* ops; struct page* page; } ;
struct pipe_buf_operations {int (* confirm ) (struct pipe_inode_info*,struct pipe_buffer*) ;int /*<<< orphan*/  (* unmap ) (struct pipe_inode_info*,struct pipe_buffer*,void*) ;void* (* map ) (struct pipe_inode_info*,struct pipe_buffer*,int) ;scalar_t__ can_merge; } ;
struct page {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mutex; struct pipe_inode_info* i_pipe; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_flags; TYPE_2__ f_path; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int O_NONBLOCK ; 
 int PAGE_SIZE ; 
 int PIPE_BUFFERS ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIGPIPE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pipe_buf_operations anon_pipe_buf_ops ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct iovec*,int) ; 
 size_t FUNC3 (struct iovec*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct page*) ; 
 char* FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,struct iovec*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct pipe_inode_info*,struct pipe_buffer*) ; 
 void* FUNC18 (struct pipe_inode_info*,struct pipe_buffer*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct pipe_inode_info*,struct pipe_buffer*,void*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC22(struct kiocb *iocb, const struct iovec *_iov,
	    unsigned long nr_segs, loff_t ppos)
{
	struct file *filp = iocb->ki_filp;
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct pipe_inode_info *pipe;
	ssize_t ret;
	int do_wakeup;
	struct iovec *iov = (struct iovec *)_iov;
	size_t total_len;
	ssize_t chars;

	total_len = FUNC3(iov, nr_segs);
	/* Null write succeeds. */
	if (FUNC20(total_len == 0))
		return 0;

	do_wakeup = 0;
	ret = 0;
	FUNC14(inode->i_sb);
	FUNC9(&inode->i_mutex);
	pipe = inode->i_pipe;

	if (!pipe->readers) {
		FUNC15(SIGPIPE, current, 0);
		ret = -EPIPE;
		goto out;
	}

	/* We try to merge small writes */
	chars = total_len & (PAGE_SIZE-1); /* size of the last buffer */
	if (pipe->nrbufs && chars != 0) {
		int lastbuf = (pipe->curbuf + pipe->nrbufs - 1) &
							(PIPE_BUFFERS-1);
		struct pipe_buffer *buf = pipe->bufs + lastbuf;
		const struct pipe_buf_operations *ops = buf->ops;
		int offset = buf->offset + buf->len;

		if (ops->can_merge && offset + chars <= PAGE_SIZE) {
			int error, atomic = 1;
			void *addr;

			error = ops->confirm(pipe, buf);
			if (error)
				goto out;

			FUNC2(iov, chars);
redo1:
			addr = ops->map(pipe, buf, atomic);
			error = FUNC11(offset + addr, iov,
							chars, atomic);
			ops->unmap(pipe, buf, addr);
			ret = error;
			do_wakeup = 1;
			if (error) {
				if (atomic) {
					atomic = 0;
					goto redo1;
				}
				goto out;
			}
			buf->len += chars;
			total_len -= chars;
			ret = chars;
			if (!total_len)
				goto out;
		}
	}

	for (;;) {
		int bufs;

		if (!pipe->readers) {
			FUNC15(SIGPIPE, current, 0);
			if (!ret)
				ret = -EPIPE;
			break;
		}
		bufs = pipe->nrbufs;
		if (bufs < PIPE_BUFFERS) {
			int newbuf = (pipe->curbuf + bufs) & (PIPE_BUFFERS-1);
			struct pipe_buffer *buf = pipe->bufs + newbuf;
			struct page *page = pipe->tmp_page;
			char *src;
			int error, atomic = 1;

			if (!page) {
				page = FUNC0(GFP_HIGHUSER);
				if (FUNC20(!page)) {
					ret = ret ? : -ENOMEM;
					break;
				}
				pipe->tmp_page = page;
			}
			/* Always wake up, even if the copy fails. Otherwise
			 * we lock up (O_NONBLOCK-)readers that sleep due to
			 * syscall merging.
			 * FIXME! Is this really true?
			 */
			do_wakeup = 1;
			chars = PAGE_SIZE;
			if (chars > total_len)
				chars = total_len;

			FUNC2(iov, chars);
redo2:
			if (atomic)
				src = FUNC6(page, KM_USER0);
			else
				src = FUNC5(page);

			error = FUNC11(src, iov, chars,
							atomic);
			if (atomic)
				FUNC8(src, KM_USER0);
			else
				FUNC7(page);

			if (FUNC20(error)) {
				if (atomic) {
					atomic = 0;
					goto redo2;
				}
				if (!ret)
					ret = error;
				break;
			}
			ret += chars;

			/* Insert it into the buffer array */
			buf->page = page;
			buf->ops = &anon_pipe_buf_ops;
			buf->offset = 0;
			buf->len = chars;
			pipe->nrbufs = ++bufs;
			pipe->tmp_page = NULL;

			total_len -= chars;
			if (!total_len)
				break;
		}
		if (bufs < PIPE_BUFFERS)
			continue;
		if (filp->f_flags & O_NONBLOCK) {
			if (!ret)
				ret = -EAGAIN;
			break;
		}
		if (FUNC16(current)) {
			if (!ret)
				ret = -ERESTARTSYS;
			break;
		}
		if (do_wakeup) {
			FUNC21(&pipe->wait);
			FUNC4(&pipe->fasync_readers, SIGIO, POLL_IN);
			do_wakeup = 0;
		}
		pipe->waiting_writers++;
		FUNC12(pipe);
		pipe->waiting_writers--;
	}
out:
	FUNC10(&inode->i_mutex);
	if (do_wakeup) {
		FUNC21(&pipe->wait);
		FUNC4(&pipe->fasync_readers, SIGIO, POLL_IN);
	}
	if (ret > 0)
		FUNC1(filp);
	FUNC13(inode->i_sb);
	return ret;
}