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
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_statfs_change_host {int /*<<< orphan*/  sc_dinodes; int /*<<< orphan*/  sc_free; int /*<<< orphan*/  sc_total; } ;
struct gfs2_sbd {scalar_t__ sd_statfs_force_sync; int /*<<< orphan*/  sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; int /*<<< orphan*/  sd_sc_inode; int /*<<< orphan*/  sd_statfs_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int RES_DINODE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC4 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_statfs_change_host*,scalar_t__) ; 
 int FUNC6 (struct gfs2_sbd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*,struct buffer_head*,struct buffer_head*) ; 

int FUNC11(struct super_block *sb, int type)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_inode *m_ip = FUNC0(sdp->sd_statfs_inode);
	struct gfs2_inode *l_ip = FUNC0(sdp->sd_sc_inode);
	struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
	struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;
	struct gfs2_holder gh;
	struct buffer_head *m_bh, *l_bh;
	int error;

	error = FUNC3(m_ip->i_gl, LM_ST_EXCLUSIVE, GL_NOCACHE,
				   &gh);
	if (error)
		return error;

	error = FUNC4(m_ip, &m_bh);
	if (error)
		goto out;

	FUNC8(&sdp->sd_statfs_spin);
	FUNC5(m_sc, m_bh->b_data +
			      sizeof(struct gfs2_dinode));
	if (!l_sc->sc_total && !l_sc->sc_free && !l_sc->sc_dinodes) {
		FUNC9(&sdp->sd_statfs_spin);
		goto out_bh;
	}
	FUNC9(&sdp->sd_statfs_spin);

	error = FUNC4(l_ip, &l_bh);
	if (error)
		goto out_bh;

	error = FUNC6(sdp, 2 * RES_DINODE, 0);
	if (error)
		goto out_bh2;

	FUNC10(sdp, m_bh, l_bh);
	sdp->sd_statfs_force_sync = 0;

	FUNC7(sdp);

out_bh2:
	FUNC1(l_bh);
out_bh:
	FUNC1(m_bh);
out:
	FUNC2(&gh);
	return error;
}