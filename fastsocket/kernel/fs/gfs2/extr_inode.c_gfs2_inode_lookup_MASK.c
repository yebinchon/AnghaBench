#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct inode {int i_state; int /*<<< orphan*/  i_mode; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_5__ {TYPE_1__* gh_gl; int /*<<< orphan*/  gh_flags; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; TYPE_2__ i_iopen_gh; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_no_formal_ino; } ;
struct gfs2_glock {struct gfs2_inode* gl_object; } ;
struct TYPE_4__ {struct gfs2_inode* gl_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int DT_UNKNOWN ; 
 int ENOBUFS ; 
 struct inode* FUNC1 (int) ; 
 struct gfs2_inode* FUNC2 (struct inode*) ; 
 struct gfs2_sbd* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 int /*<<< orphan*/  GL_EXACT ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int I_NEW ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gfs2_glock**) ; 
 int FUNC6 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_glock*) ; 
 struct inode* FUNC8 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gfs2_inode_glops ; 
 int FUNC9 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_iopen_glops ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 

struct inode *FUNC15(struct super_block *sb, unsigned int type,
				u64 no_addr, u64 no_formal_ino, int non_block)
{
	struct inode *inode;
	struct gfs2_inode *ip;
	struct gfs2_glock *io_gl = NULL;
	int error;

	inode = FUNC8(sb, no_addr, non_block);
	ip = FUNC2(inode);

	if (!inode)
		return FUNC1(-ENOBUFS);

	if (inode->i_state & I_NEW) {
		struct gfs2_sbd *sdp = FUNC3(inode);
		ip->i_no_formal_ino = no_formal_ino;

		error = FUNC5(sdp, no_addr, &gfs2_inode_glops, CREATE, &ip->i_gl);
		if (FUNC13(error))
			goto fail;
		ip->i_gl->gl_object = ip;

		error = FUNC5(sdp, no_addr, &gfs2_iopen_glops, CREATE, &io_gl);
		if (FUNC13(error))
			goto fail_put;

		FUNC12(GIF_INVALID, &ip->i_flags);
		error = FUNC6(io_gl, LM_ST_SHARED, GL_EXACT, &ip->i_iopen_gh);
		if (FUNC13(error))
			goto fail_iopen;

		ip->i_iopen_gh.gh_gl->gl_object = ip;
		FUNC7(io_gl);
		io_gl = NULL;

 		if (type == DT_UNKNOWN) {
			/* Inode glock must be locked already */
			error = FUNC9(FUNC2(inode));
			if (error)
				goto fail_refresh;
		} else {
			inode->i_mode = FUNC0(type);
		}

		FUNC10(inode);
		FUNC14(inode);
	}

	return inode;

fail_refresh:
	ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
	ip->i_iopen_gh.gh_gl->gl_object = NULL;
	FUNC4(&ip->i_iopen_gh);
fail_iopen:
	if (io_gl)
		FUNC7(io_gl);
fail_put:
	ip->i_gl->gl_object = NULL;
	FUNC7(ip->i_gl);
fail:
	FUNC11(inode);
	return FUNC1(error);
}