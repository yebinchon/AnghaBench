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
struct pipe_inode_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct pipe_inode_info*,unsigned int) ; 
 int FUNC1 (struct pipe_inode_info*,struct pipe_inode_info*,size_t,unsigned int) ; 
 int FUNC2 (struct pipe_inode_info*,unsigned int) ; 
 struct pipe_inode_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC4(struct file *in, struct file *out, size_t len,
		   unsigned int flags)
{
	struct pipe_inode_info *ipipe = FUNC3(in->f_path.dentry->d_inode);
	struct pipe_inode_info *opipe = FUNC3(out->f_path.dentry->d_inode);
	int ret = -EINVAL;

	/*
	 * Duplicate the contents of ipipe to opipe without actually
	 * copying the data.
	 */
	if (ipipe && opipe && ipipe != opipe) {
		/*
		 * Keep going, unless we encounter an error. The ipipe/opipe
		 * ordering doesn't really matter.
		 */
		ret = FUNC0(ipipe, flags);
		if (!ret) {
			ret = FUNC2(opipe, flags);
			if (!ret)
				ret = FUNC1(ipipe, opipe, len, flags);
		}
	}

	return ret;
}