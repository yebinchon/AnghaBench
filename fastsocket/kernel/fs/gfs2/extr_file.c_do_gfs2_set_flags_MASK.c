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
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mnt; TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_LINUX_IMMUTABLE ; 
 int EACCES ; 
 int EINVAL ; 
 int EPERM ; 
 int GFS2_DIF_APPENDONLY ; 
 int GFS2_DIF_IMMUTABLE ; 
 int GFS2_DIF_JDATA ; 
 int GFS2_FLAGS_USER_SET ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  RES_DINODE ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_holder*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC17 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct file *filp, u32 reqflags, u32 mask)
{
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct buffer_head *bh;
	struct gfs2_holder gh;
	int error;
	u32 new_flags, flags;

	error = FUNC21(filp->f_path.mnt);
	if (error)
		return error;

	error = FUNC10(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
	if (error)
		goto out_drop_write;

	error = -EACCES;
	if (!FUNC19(inode))
		goto out;

	error = 0;
	flags = ip->i_diskflags;
	new_flags = (flags & ~mask) | (reqflags & mask);
	if ((new_flags ^ flags) == 0)
		goto out;

	error = -EINVAL;
	if ((new_flags ^ flags) & ~GFS2_FLAGS_USER_SET)
		goto out;

	error = -EPERM;
	if (FUNC3(inode) && (new_flags & GFS2_DIF_IMMUTABLE))
		goto out;
	if (FUNC2(inode) && (new_flags & GFS2_DIF_APPENDONLY))
		goto out;
	if (((new_flags ^ flags) & GFS2_DIF_IMMUTABLE) &&
	    !FUNC5(CAP_LINUX_IMMUTABLE))
		goto out;
	if (!FUNC3(inode)) {
		error = FUNC13(inode, MAY_WRITE);
		if (error)
			goto out;
	}
	if ((flags ^ new_flags) & GFS2_DIF_JDATA) {
		if (flags & GFS2_DIF_JDATA)
			FUNC11(sdp, ip->i_gl);
		error = FUNC7(inode->i_mapping);
		if (error)
			goto out;
		error = FUNC6(inode->i_mapping);
		if (error)
			goto out;
	}
	error = FUNC17(sdp, RES_DINODE, 0);
	if (error)
		goto out;
	error = FUNC12(ip, &bh);
	if (error)
		goto out_trans_end;
	FUNC16(ip->i_gl, bh);
	ip->i_diskflags = new_flags;
	FUNC8(ip, bh->b_data);
	FUNC4(bh);
	FUNC15(inode);
	FUNC14(inode);
out_trans_end:
	FUNC18(sdp);
out:
	FUNC9(&gh);
out_drop_write:
	FUNC20(filp->f_path.mnt);
	return error;
}