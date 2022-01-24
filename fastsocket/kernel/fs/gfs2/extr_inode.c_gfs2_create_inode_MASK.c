#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct qstr {scalar_t__ len; } ;
struct inode {unsigned int i_mode; unsigned int i_size; TYPE_4__* i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_rdev; } ;
struct gfs2_sbd {TYPE_1__* sd_root_dir; int /*<<< orphan*/  sd_vfs; } ;
struct gfs2_holder {TYPE_2__* gh_gl; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_flags; struct gfs2_glock* i_gl; struct gfs2_holder i_iopen_gh; int /*<<< orphan*/  i_no_addr; scalar_t__ i_entries; scalar_t__ i_depth; scalar_t__ i_height; scalar_t__ i_eattr; int /*<<< orphan*/  i_goal; int /*<<< orphan*/  i_inode; } ;
struct gfs2_glock {struct gfs2_inode* gl_object; } ;
struct dentry {struct qstr d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_8__ {TYPE_3__* s_op; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* destroy_inode ) (struct inode*) ;} ;
struct TYPE_6__ {struct gfs2_inode* gl_object; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EEXIST ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFS2_AF_ORLOV ; 
 int GFS2_DIF_TOPDIR ; 
 scalar_t__ GFS2_FNAMESIZE ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIF_ALLOC_FAILED ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 int /*<<< orphan*/  GL_EXACT ; 
 int /*<<< orphan*/  GL_SKIP ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  RES_DINODE ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct gfs2_inode*,struct qstr const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*) ; 
 int FUNC9 (struct gfs2_inode*,struct inode*) ; 
 int FUNC10 (struct inode*,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct gfs2_holder*) ; 
 int FUNC13 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gfs2_glock**) ; 
 int FUNC14 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  gfs2_inode_glops ; 
 int FUNC16 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_iopen_glops ; 
 struct inode* FUNC18 (struct inode*,struct qstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_inode*) ; 
 int FUNC20 (struct gfs2_sbd*) ; 
 int FUNC21 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct gfs2_inode*) ; 
 int FUNC23 (struct gfs2_inode*,struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int FUNC26 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC28 (struct gfs2_inode*,struct gfs2_inode*,char const*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int FUNC31 (struct gfs2_inode*,struct qstr const*,struct gfs2_inode*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 
 int /*<<< orphan*/  FUNC33 (struct gfs2_inode*,struct inode*) ; 
 struct inode* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*) ; 

int FUNC37(struct inode *dir, struct dentry *dentry,
		      unsigned int mode, dev_t dev, const char *symname,
		      unsigned int size, int excl)
{
	const struct qstr *name = &dentry->d_name;
	struct gfs2_holder ghs[2];
	struct inode *inode = NULL;
	struct gfs2_inode *dip = FUNC0(dir), *ip;
	struct gfs2_sbd *sdp = FUNC1(&dip->i_inode);
	struct gfs2_glock *io_gl;
	int error;
	struct buffer_head *bh = NULL;
	u32 aflags = 0;
	int arq;

	if (!name->len || name->len > GFS2_FNAMESIZE)
		return -ENAMETOOLONG;

	error = FUNC21(dip);
	if (error)
		return error;

	error = FUNC20(sdp);
	if (error)
		return error;

	error = FUNC14(dip->i_gl, LM_ST_EXCLUSIVE, 0, ghs);
	if (error)
		goto fail;

	error = FUNC7(dip, name, mode);
	if ((error == -EEXIST) && FUNC4(mode) && !excl) {
		inode = FUNC18(dir, &dentry->d_name, 0);
		if (inode)
			FUNC11(ghs);
		if (!FUNC2(inode))
			FUNC8(dentry, inode);
		return FUNC2(inode) ? FUNC3(inode) : 0;
	}
	if (error)
		goto fail_gunlock;

	arq = error = FUNC10(dir, name);
	if (error < 0)
		goto fail_gunlock;

	inode = FUNC34(sdp->sd_vfs);
	if (!inode) {
		FUNC11(ghs);
		return -ENOMEM;
	}
	ip = FUNC0(inode);
	error = FUNC21(ip);
	if (error)
		goto fail_free_inode;

	FUNC35(GIF_INVALID, &ip->i_flags);
	inode->i_mode = mode;
	inode->i_rdev = dev;
	inode->i_size = size;
	inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
	FUNC24(inode, 1);
	FUNC33(dip, inode);
	ip->i_goal = dip->i_goal;
	ip->i_diskflags = 0;
	ip->i_eattr = 0;
	ip->i_height = 0;
	ip->i_depth = 0;
	ip->i_entries = 0;

	if ((FUNC0(sdp->sd_root_dir->d_inode) == dip) ||
	    (dip->i_diskflags & GFS2_DIF_TOPDIR))
		aflags |= GFS2_AF_ORLOV;

	error = FUNC5(ip, aflags);
	if (error)
		goto fail_free_inode;

	error = FUNC13(sdp, ip->i_no_addr, &gfs2_inode_glops, CREATE, &ip->i_gl);
	if (error)
		goto fail_free_inode;

	ip->i_gl->gl_object = ip;
	error = FUNC14(ip->i_gl, LM_ST_EXCLUSIVE, GL_SKIP, ghs + 1);
	if (error)
		goto fail_free_inode;

	error = FUNC26(sdp, RES_DINODE, 0);
	if (error)
		goto fail_gunlock2;

	FUNC28(dip, ip, symname, &bh);
	FUNC27(sdp);

	error = FUNC13(sdp, ip->i_no_addr, &gfs2_iopen_glops, CREATE, &io_gl);
	if (error)
		goto fail_gunlock2;

	error = FUNC14(io_gl, LM_ST_SHARED, GL_EXACT, &ip->i_iopen_gh);
	if (error)
		goto fail_gunlock2;

	ip->i_iopen_gh.gh_gl->gl_object = ip;
	FUNC15(io_gl);
	FUNC25(inode);
	FUNC29(inode);

	error = FUNC16(ip);
	if (error)
		goto fail_gunlock3;

	error = FUNC9(dip, inode);
	if (error)
		goto fail_gunlock3;

	error = FUNC23(dip, ip);
	if (error)
		goto fail_gunlock3;

	error = FUNC31(dip, name, ip, arq);
	if (error)
		goto fail_gunlock3;

	if (bh)
		FUNC6(bh);

	FUNC27(sdp);
	FUNC17(dip);
	FUNC19(dip);
	FUNC32(inode);
	FUNC12(2, ghs);
	FUNC8(dentry, inode);
	return 0;

fail_gunlock3:
	FUNC11(ghs + 1);
	if (ip->i_gl)
		FUNC15(ip->i_gl);
	goto fail_gunlock;

fail_gunlock2:
	FUNC11(ghs + 1);
fail_free_inode:
	if (ip->i_gl)
		FUNC15(ip->i_gl);
	FUNC22(ip);
	inode->i_sb->s_op->destroy_inode(inode);
	inode = NULL;
fail_gunlock:
	FUNC11(ghs);
	if (inode && !FUNC2(inode)) {
		FUNC35(GIF_ALLOC_FAILED, &FUNC0(inode)->i_flags);
		FUNC30(inode);
	}
fail:
	if (bh)
		FUNC6(bh);
	return error;
}