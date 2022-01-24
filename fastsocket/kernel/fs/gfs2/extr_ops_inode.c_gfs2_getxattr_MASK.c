#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC1 (struct dentry*,char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 

__attribute__((used)) static ssize_t FUNC6(struct dentry *dentry, const char *name,
			     void *data, size_t size)
{
	struct inode *inode = dentry->d_inode;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int ret;

	FUNC4(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
	ret = FUNC3(&gh);
	if (ret == 0) {
		ret = FUNC1(dentry, name, data, size);
		FUNC2(&gh);
	}
	FUNC5(&gh);
	return ret;
}