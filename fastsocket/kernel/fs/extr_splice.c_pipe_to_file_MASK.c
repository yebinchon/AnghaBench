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
struct TYPE_3__ {struct file* file; } ;
struct splice_desc {unsigned int pos; unsigned int len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; TYPE_2__* ops; struct page* page; } ;
struct page {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {int (* confirm ) (struct pipe_inode_info*,struct pipe_buffer*) ;char* (* map ) (struct pipe_inode_info*,struct pipe_buffer*,int) ;int /*<<< orphan*/  (* unmap ) (struct pipe_inode_info*,struct pipe_buffer*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  KM_USER1 ; 
 unsigned int PAGE_CACHE_MASK ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 char* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 int FUNC4 (struct file*,struct address_space*,unsigned int,unsigned int,int /*<<< orphan*/ ,struct page**,void**) ; 
 int FUNC5 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ; 
 int FUNC6 (struct pipe_inode_info*,struct pipe_buffer*) ; 
 char* FUNC7 (struct pipe_inode_info*,struct pipe_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pipe_inode_info*,struct pipe_buffer*,char*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
		 struct splice_desc *sd)
{
	struct file *file = sd->u.file;
	struct address_space *mapping = file->f_mapping;
	unsigned int offset, this_len;
	struct page *page;
	void *fsdata;
	int ret;

	/*
	 * make sure the data in this buffer is uptodate
	 */
	ret = buf->ops->confirm(pipe, buf);
	if (FUNC9(ret))
		return ret;

	offset = sd->pos & ~PAGE_CACHE_MASK;

	this_len = sd->len;
	if (this_len + offset > PAGE_CACHE_SIZE)
		this_len = PAGE_CACHE_SIZE - offset;

	ret = FUNC4(file, mapping, sd->pos, this_len,
				AOP_FLAG_UNINTERRUPTIBLE, &page, &fsdata);
	if (FUNC9(ret))
		goto out;

	if (buf->page != page) {
		/*
		 * Careful, ->map() uses KM_USER0!
		 */
		char *src = buf->ops->map(pipe, buf, 1);
		char *dst = FUNC1(page, KM_USER1);

		FUNC3(dst + offset, src + buf->offset, this_len);
		FUNC0(page);
		FUNC2(dst, KM_USER1);
		buf->ops->unmap(pipe, buf, src);
	}
	ret = FUNC5(file, mapping, sd->pos, this_len, this_len,
				page, fsdata);
out:
	return ret;
}