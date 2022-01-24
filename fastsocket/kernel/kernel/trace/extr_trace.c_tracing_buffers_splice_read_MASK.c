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
struct splice_pipe_desc {unsigned int flags; int nr_pages; struct partial_page* partial; struct page** pages; int /*<<< orphan*/  spd_release; int /*<<< orphan*/ * ops; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int len; unsigned long private; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct ftrace_buffer_info {int /*<<< orphan*/  cpu; TYPE_1__* tr; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
struct buffer_ref {int ref; int /*<<< orphan*/  page; int /*<<< orphan*/  buffer; } ;
typedef  size_t ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 size_t EAGAIN ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_MASK ; 
 int PAGE_SIZE ; 
 int PIPE_BUFFERS ; 
 unsigned int SPLICE_F_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  buffer_pipe_buf_ops ; 
 int /*<<< orphan*/  buffer_spd_release ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_ref*) ; 
 struct buffer_ref* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 size_t FUNC9 (struct pipe_inode_info*,struct splice_pipe_desc*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC11(struct file *file, loff_t *ppos,
			    struct pipe_inode_info *pipe, size_t len,
			    unsigned int flags)
{
	struct ftrace_buffer_info *info = file->private_data;
	struct partial_page partial[PIPE_BUFFERS];
	struct page *pages[PIPE_BUFFERS];
	struct splice_pipe_desc spd = {
		.pages		= pages,
		.partial	= partial,
		.flags		= flags,
		.ops		= &buffer_pipe_buf_ops,
		.spd_release	= buffer_spd_release,
	};
	struct buffer_ref *ref;
	int entries, size, i;
	size_t ret;

	if (*ppos & (PAGE_SIZE - 1)) {
		FUNC0(1, "Ftrace: previous read must page-align\n");
		return -EINVAL;
	}

	if (len & (PAGE_SIZE - 1)) {
		FUNC0(1, "Ftrace: splice_read should page-align\n");
		if (len < PAGE_SIZE)
			return -EINVAL;
		len &= PAGE_MASK;
	}

	entries = FUNC5(info->tr->buffer, info->cpu);

	for (i = 0; i < PIPE_BUFFERS && len && entries; i++, len -= PAGE_SIZE) {
		struct page *page;
		int r;

		ref = FUNC2(sizeof(*ref), GFP_KERNEL);
		if (!ref)
			break;

		ref->ref = 1;
		ref->buffer = info->tr->buffer;
		ref->page = FUNC4(ref->buffer);
		if (!ref->page) {
			FUNC1(ref);
			break;
		}

		r = FUNC8(ref->buffer, &ref->page,
					  len, info->cpu, 1);
		if (r < 0) {
			FUNC6(ref->buffer,
						   ref->page);
			FUNC1(ref);
			break;
		}

		/*
		 * zero out any left over data, this is going to
		 * user land.
		 */
		size = FUNC7(ref->page);
		if (size < PAGE_SIZE)
			FUNC3(ref->page + size, 0, PAGE_SIZE - size);

		page = FUNC10(ref->page);

		spd.pages[i] = page;
		spd.partial[i].len = PAGE_SIZE;
		spd.partial[i].offset = 0;
		spd.partial[i].private = (unsigned long)ref;
		spd.nr_pages++;
		*ppos += PAGE_SIZE;

		entries = FUNC5(info->tr->buffer, info->cpu);
	}

	spd.nr_pages = i;

	/* did we read anything? */
	if (!spd.nr_pages) {
		if (flags & SPLICE_F_NONBLOCK)
			ret = -EAGAIN;
		else
			ret = 0;
		/* TODO: block */
		return ret;
	}

	ret = FUNC9(pipe, &spd);

	return ret;
}