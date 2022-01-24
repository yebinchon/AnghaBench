#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct super_block {int s_flags; struct gfs2_sbd* s_fs_info; } ;
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct gfs2_sbd {TYPE_1__* sd_jdesc; } ;
struct gfs2_holder {int gh_flags; int /*<<< orphan*/  gh_iflags; } ;
struct gfs2_inode {int i_diskflags; struct gfs2_holder i_iopen_gh; int /*<<< orphan*/  i_res; TYPE_2__* i_gl; scalar_t__ i_eattr; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_no_addr; } ;
struct gfs2_dinode {int /*<<< orphan*/  di_atime_nsec; int /*<<< orphan*/  di_atime; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct address_space {int dummy; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  gl_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  jd_blocks; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  GFS2_BLKST_UNLINKED ; 
 int GFS2_DIF_EXHASH ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GIF_ALLOC_FAILED ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int GLR_TRYFAILED ; 
 int GL_NOCACHE ; 
 int /*<<< orphan*/  GL_SKIP ; 
 int /*<<< orphan*/  HIF_HOLDER ; 
 int LM_FLAG_TRY_1CB ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int MS_RDONLY ; 
 int PF_MEMALLOC ; 
 int /*<<< orphan*/  RES_DINODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 TYPE_7__* current ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*,scalar_t__) ; 
 int FUNC13 (struct gfs2_inode*) ; 
 int FUNC14 (struct gfs2_inode*) ; 
 int FUNC15 (struct gfs2_inode*) ; 
 struct address_space* FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_holder*) ; 
 int FUNC20 (struct gfs2_holder*) ; 
 int FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC23 (struct gfs2_holder*) ; 
 int FUNC24 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct gfs2_sbd*,TYPE_2__*) ; 
 int FUNC27 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC28 (struct gfs2_inode*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,struct buffer_head*) ; 
 int FUNC33 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct gfs2_sbd*) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (struct inode*,int) ; 

__attribute__((used)) static void FUNC40(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int error;

	if (sb->s_flags & MS_RDONLY)
		goto out;

	/* Must not read inode block until block type has been verified */
	error = FUNC21(ip->i_gl, LM_ST_EXCLUSIVE, GL_SKIP, &gh);
	if (FUNC38(error)) {
		ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
		FUNC18(&ip->i_iopen_gh);
		goto out;
	}

	if (!FUNC35(GIF_ALLOC_FAILED, &ip->i_flags)) {
		error = FUNC10(sdp, ip->i_no_addr, GFS2_BLKST_UNLINKED);
		if (error)
			goto out_truncate;
	}

	if (FUNC35(GIF_INVALID, &ip->i_flags)) {
		error = FUNC24(ip);
		if (error)
			goto out_truncate;
	}

	ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
	FUNC19(&ip->i_iopen_gh);
	FUNC22(LM_ST_EXCLUSIVE, LM_FLAG_TRY_1CB | GL_NOCACHE, &ip->i_iopen_gh);
	error = FUNC20(&ip->i_iopen_gh);
	if (error)
		goto out_truncate;

	/* Case 1 starts here */

	if (FUNC1(inode->i_mode) &&
	    (ip->i_diskflags & GFS2_DIF_EXHASH)) {
		error = FUNC13(ip);
		if (error)
			goto out_unlock;
	}

	if (ip->i_eattr) {
		error = FUNC14(ip);
		if (error)
			goto out_unlock;
	}

	if (!FUNC25(ip)) {
		error = FUNC15(ip);
		if (error)
			goto out_unlock;
	}

	error = FUNC11(ip);
	goto out_unlock;

out_truncate:
	if (FUNC35(GLF_DIRTY, &ip->i_gl->gl_flags) &&
            !(current->flags & PF_MEMALLOC)) {
		struct buffer_head *bh;
		struct gfs2_dinode *di;
		struct timespec atime;
		error = FUNC27(ip, &bh);
		if (!error) {
			di = (struct gfs2_dinode *)bh->b_data;
			atime.tv_sec = FUNC3(di->di_atime);
			atime.tv_nsec = FUNC2(di->di_atime_nsec);
			if (FUNC36(&inode->i_atime, &atime) > 0) {
				error = FUNC33(sdp, RES_DINODE, 0);
				if (error == 0) {
					FUNC32(ip->i_gl, bh);
					FUNC12(ip, bh->b_data);
					FUNC34(sdp);
				}
			}
			FUNC4(bh);
		}
	}
	FUNC26(sdp, ip->i_gl);
	if (FUNC35(GLF_DIRTY, &ip->i_gl->gl_flags)) {
		struct address_space *metamapping = FUNC16(ip->i_gl);
		FUNC7(metamapping);
		FUNC6(metamapping);
	}
	FUNC39(inode, 1);
	FUNC9(ip->i_gl, 0);

	/* Case 2 starts here */
	error = FUNC33(sdp, 0, sdp->sd_jdesc->jd_blocks);
	if (error)
		goto out_unlock;
	/* Needs to be done before glock release & also in a transaction */
	FUNC37(&inode->i_data, 0);
	FUNC34(sdp);

out_unlock:
	/* Error path for case 1 */
	if (FUNC29(ip->i_res))
		FUNC31(ip->i_res);

	if (FUNC35(HIF_HOLDER, &ip->i_iopen_gh.gh_iflags)) {
		ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
		FUNC17(&ip->i_iopen_gh);
	}
	FUNC23(&ip->i_iopen_gh);
	FUNC18(&gh);
	if (error && error != GLR_TRYFAILED && error != -EROFS)
		FUNC8(sdp, "gfs2_delete_inode: %d\n", error);
out:
	/* Case 3 starts here */
	FUNC37(&inode->i_data, 0);
	FUNC30(ip);
	FUNC28(ip);
	FUNC5(inode);
}