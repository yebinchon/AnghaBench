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
typedef  scalar_t__ u64 ;
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_statfs_change_host {scalar_t__ sc_total; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; int /*<<< orphan*/  sd_sc_inode; int /*<<< orphan*/  sd_statfs_inode; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {struct gfs2_sbd* s_fs_info; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,char*,unsigned long long) ; 
 scalar_t__ FUNC3 (struct gfs2_inode*,struct buffer_head**) ; 
 scalar_t__ FUNC4 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_statfs_change_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,struct buffer_head*,struct buffer_head*) ; 

__attribute__((used)) static void FUNC10(struct inode *inode)
{
	struct gfs2_sbd *sdp = inode->i_sb->s_fs_info;
	struct gfs2_inode *m_ip = FUNC0(sdp->sd_statfs_inode);
	struct gfs2_inode *l_ip = FUNC0(sdp->sd_sc_inode);
	struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
	struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;
	struct buffer_head *m_bh, *l_bh;
	u64 fs_total, new_free;

	/* Total up the file system space, according to the latest rindex. */
	fs_total = FUNC4(sdp);
	if (FUNC3(m_ip, &m_bh) != 0)
		return;

	FUNC7(&sdp->sd_statfs_spin);
	FUNC6(m_sc, m_bh->b_data +
			      sizeof(struct gfs2_dinode));
	if (fs_total > (m_sc->sc_total + l_sc->sc_total))
		new_free = fs_total - (m_sc->sc_total + l_sc->sc_total);
	else
		new_free = 0;
	FUNC8(&sdp->sd_statfs_spin);
	FUNC2(sdp, "File system extended by %llu blocks.\n",
		(unsigned long long)new_free);
	FUNC5(sdp, new_free, new_free, 0);

	if (FUNC3(l_ip, &l_bh) != 0)
		goto out;
	FUNC9(sdp, m_bh, l_bh);
	FUNC1(l_bh);
out:
	FUNC1(m_bh);
}