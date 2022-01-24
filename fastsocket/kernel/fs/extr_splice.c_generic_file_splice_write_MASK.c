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
struct TYPE_2__ {struct file* file; } ;
struct splice_desc {size_t total_len; unsigned int flags; int pos; int num_spliced; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mutex; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef  int ssize_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct address_space*,unsigned long) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (struct file*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  pipe_to_file ; 
 int /*<<< orphan*/  FUNC7 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct splice_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct pipe_inode_info*,struct splice_desc*) ; 
 int FUNC12 (struct pipe_inode_info*,struct splice_desc*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pipe_inode_info*,struct splice_desc*) ; 

ssize_t
FUNC14(struct pipe_inode_info *pipe, struct file *out,
			  loff_t *ppos, size_t len, unsigned int flags)
{
	struct address_space *mapping = out->f_mapping;
	struct inode *inode = mapping->host;
	struct splice_desc sd = {
		.total_len = len,
		.flags = flags,
		.pos = *ppos,
		.u.file = out,
	};
	ssize_t ret;

	FUNC9(inode->i_sb);

	FUNC6(pipe);

	FUNC10(&sd);
	do {
		ret = FUNC13(pipe, &sd);
		if (ret <= 0)
			break;

		FUNC4(&inode->i_mutex, I_MUTEX_CHILD);
		ret = FUNC1(out);
		if (!ret) {
			FUNC2(out);
			ret = FUNC12(pipe, &sd, pipe_to_file);
		}
		FUNC5(&inode->i_mutex);
	} while (ret > 0);
	FUNC11(pipe, &sd);

	FUNC7(pipe);

	if (sd.num_spliced)
		ret = sd.num_spliced;

	if (ret > 0) {
		unsigned long nr_pages;
		int err;

		nr_pages = (ret + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;

		err = FUNC3(out, *ppos, ret);
		if (err)
			ret = err;
		else
			*ppos += ret;
		FUNC0(mapping, nr_pages);
	}
	FUNC8(inode->i_sb);

	return ret;
}