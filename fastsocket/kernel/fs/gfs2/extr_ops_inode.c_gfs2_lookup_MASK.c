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
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; int /*<<< orphan*/ * d_op; } ;
struct TYPE_2__ {struct gfs2_glock* i_gl; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC5 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  gfs2_dops ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int FUNC7 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 struct inode* FUNC8 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC10(struct inode *dir, struct dentry *dentry,
				  struct nameidata *nd)
{
	struct inode *inode = NULL;

	dentry->d_op = &gfs2_dops;

	inode = FUNC8(dir, &dentry->d_name, 0);
	if (inode && FUNC3(inode))
		return FUNC0(inode);

	if (inode) {
		struct gfs2_glock *gl = FUNC2(inode)->i_gl;
		struct gfs2_holder gh;
		int error;
		error = FUNC7(gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
		if (error) {
			FUNC9(inode);
			return FUNC1(error);
		}
		FUNC6(&gh);
		return FUNC5(inode, dentry);
	}
	FUNC4(dentry, inode);

	return NULL;
}