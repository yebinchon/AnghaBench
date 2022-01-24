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
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_1__ i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_file {int /*<<< orphan*/  f_fl_mutex; } ;
struct file {int f_flags; struct gfs2_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 scalar_t__ MAX_NON_LFS ; 
 int O_LARGEFILE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_holder*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_file*) ; 
 struct gfs2_file* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder i_gh;
	struct gfs2_file *fp;
	int error;

	fp = FUNC8(sizeof(struct gfs2_file), GFP_KERNEL);
	if (!fp)
		return -ENOMEM;

	FUNC9(&fp->f_fl_mutex);

	FUNC3(FUNC1(inode), !file->private_data);
	file->private_data = fp;

	if (FUNC2(ip->i_inode.i_mode)) {
		error = FUNC5(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
					   &i_gh);
		if (error)
			goto fail;

		if (!(file->f_flags & O_LARGEFILE) &&
		    FUNC6(inode) > MAX_NON_LFS) {
			error = -EOVERFLOW;
			goto fail_gunlock;
		}

		FUNC4(&i_gh);
	}

	return 0;

fail_gunlock:
	FUNC4(&i_gh);
fail:
	file->private_data = NULL;
	FUNC7(fp);
	return error;
}