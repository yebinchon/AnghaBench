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
struct pipe_inode_info {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (struct file*,int /*<<< orphan*/ *,struct pipe_inode_info*,size_t,unsigned int) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct file *file, loff_t *ppos,
		     struct pipe_inode_info *pipe, size_t count,
		     unsigned int flags)
{
	struct dentry *dentry = file->f_path.dentry;
	ssize_t status;

	FUNC2("file %s/%s, pos=%Ld, count=%lu\n",
		FUNC0(dentry), *ppos, count);

	status = FUNC4(dentry);
	if (status) {
		FUNC1("%s/%s validation failed, error=%Zd\n",
			 FUNC0(dentry), status);
		goto out;
	}
	status = FUNC3(file, ppos, pipe, count, flags);
out:
	return status;
}