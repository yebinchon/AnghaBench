#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct file* file; } ;
struct splice_desc {size_t total_len; unsigned int flags; int pos; int num_spliced; TYPE_1__ u; } ;
struct pipe_inode_info {TYPE_5__* inode; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_9__ {TYPE_3__* dentry; } ;
struct file {TYPE_4__ f_path; struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_8__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct address_space*,unsigned long) ; 
 int FUNC1 (struct file*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct file*,struct pipe_inode_info*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int FUNC9 (struct pipe_inode_info*,struct file*,struct splice_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct splice_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct pipe_inode_info*,struct splice_desc*) ; 
 int FUNC12 (struct pipe_inode_info*,struct splice_desc*) ; 

__attribute__((used)) static ssize_t FUNC13(struct pipe_inode_info *pipe,
				       struct file *out,
				       loff_t *ppos,
				       size_t len,
				       unsigned int flags)
{
	int ret;
	struct address_space *mapping = out->f_mapping;
	struct inode *inode = mapping->host;
	struct splice_desc sd = {
		.total_len = len,
		.flags = flags,
		.pos = *ppos,
		.u.file = out,
	};

	FUNC2("(0x%p, 0x%p, %u, '%.*s')\n", out, pipe,
		   (unsigned int)len,
		   out->f_path.dentry->d_name.len,
		   out->f_path.dentry->d_name.name);

	if (pipe->inode)
		FUNC5(&pipe->inode->i_mutex, I_MUTEX_PARENT);

	FUNC10(&sd);
	do {
		ret = FUNC12(pipe, &sd);
		if (ret <= 0)
			break;

		FUNC5(&inode->i_mutex, I_MUTEX_CHILD);
		ret = FUNC7(inode, 1);
		if (ret < 0)
			FUNC3(ret);
		else {
			ret = FUNC9(pipe, out, &sd);
			FUNC8(inode, 1);
		}
		FUNC6(&inode->i_mutex);
	} while (ret > 0);
	FUNC11(pipe, &sd);

	if (pipe->inode)
		FUNC6(&pipe->inode->i_mutex);

	if (sd.num_spliced)
		ret = sd.num_spliced;

	if (ret > 0) {
		unsigned long nr_pages;
		int err;

		nr_pages = (ret + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;

		err = FUNC1(out, *ppos, ret);
		if (err)
			ret = err;
		else
			*ppos += ret;

		FUNC0(mapping, nr_pages);
	}

	FUNC4(ret);
	return ret;
}