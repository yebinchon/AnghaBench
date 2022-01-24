#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tracer {int (* splice_read ) (struct trace_iterator*,struct file*,int /*<<< orphan*/ *,struct pipe_inode_info*,size_t,unsigned int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct trace_iterator {int /*<<< orphan*/  mutex; TYPE_1__ seq; int /*<<< orphan*/  ent; struct tracer* trace; } ;
struct splice_pipe_desc {unsigned int nr_pages; unsigned int flags; int /*<<< orphan*/  spd_release; int /*<<< orphan*/ * ops; struct partial_page* partial; struct page** pages; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int /*<<< orphan*/  len; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PIPE_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tracer* current_trace ; 
 int /*<<< orphan*/  FUNC2 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct pipe_inode_info*,struct splice_pipe_desc*) ; 
 int FUNC7 (struct trace_iterator*,struct file*,int /*<<< orphan*/ *,struct pipe_inode_info*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_types_lock ; 
 size_t FUNC12 (size_t,struct trace_iterator*) ; 
 int /*<<< orphan*/  tracing_pipe_buf_ops ; 
 int /*<<< orphan*/  tracing_spd_release_pipe ; 
 int FUNC13 (struct file*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC15(struct file *filp,
					loff_t *ppos,
					struct pipe_inode_info *pipe,
					size_t len,
					unsigned int flags)
{
	struct page *pages[PIPE_BUFFERS];
	struct partial_page partial[PIPE_BUFFERS];
	struct trace_iterator *iter = filp->private_data;
	struct splice_pipe_desc spd = {
		.pages		= pages,
		.partial	= partial,
		.nr_pages	= 0, /* This gets updated below. */
		.flags		= flags,
		.ops		= &tracing_pipe_buf_ops,
		.spd_release	= tracing_spd_release_pipe,
	};
	static struct tracer *old_tracer;
	ssize_t ret;
	size_t rem;
	unsigned int i;

	/* copy the tracer to avoid using a global lock all around */
	FUNC3(&trace_types_lock);
	if (FUNC14(old_tracer != current_trace && current_trace)) {
		old_tracer = current_trace;
		*iter->trace = *current_trace;
	}
	FUNC4(&trace_types_lock);

	FUNC3(&iter->mutex);

	if (iter->trace->splice_read) {
		ret = iter->trace->splice_read(iter, filp,
					       ppos, pipe, len, flags);
		if (ret)
			goto out_err;
	}

	ret = FUNC13(filp);
	if (ret <= 0)
		goto out_err;

	if (!iter->ent && !FUNC2(iter)) {
		ret = -EFAULT;
		goto out_err;
	}

	FUNC8();

	/* Fill as many pages as possible. */
	for (i = 0, rem = len; i < PIPE_BUFFERS && rem; i++) {
		pages[i] = FUNC1(GFP_KERNEL);
		if (!pages[i])
			break;

		rem = FUNC12(rem, iter);

		/* Copy the data into the page, so we can start over. */
		ret = FUNC11(&iter->seq,
					  FUNC5(pages[i]),
					  iter->seq.len);
		if (ret < 0) {
			FUNC0(pages[i]);
			break;
		}
		partial[i].offset = 0;
		partial[i].len = iter->seq.len;

		FUNC10(&iter->seq);
	}

	FUNC9();
	FUNC4(&iter->mutex);

	spd.nr_pages = i;

	return FUNC6(pipe, &spd);

out_err:
	FUNC4(&iter->mutex);

	return ret;
}