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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {int i_diskflags; scalar_t__ i_depth; TYPE_1__ i_inode; int /*<<< orphan*/  i_entries; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_type; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOSPC ; 
 int GFS2_DIF_EXHASH ; 
 scalar_t__ GFS2_DIR_MAX_DEPTH ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct gfs2_dirent*) ; 
 int FUNC2 (struct gfs2_dirent*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int FUNC7 (struct gfs2_inode*) ; 
 int FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,struct qstr const*) ; 
 int FUNC10 (struct inode*,struct qstr const*) ; 
 int /*<<< orphan*/  gfs2_dirent_find_space ; 
 struct gfs2_dirent* FUNC11 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct gfs2_dirent* FUNC12 (struct inode*,struct gfs2_dirent*,struct qstr const*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_inode const*,struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 

int FUNC16(struct inode *inode, const struct qstr *name,
		 const struct gfs2_inode *nip, unsigned type)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct buffer_head *bh;
	struct gfs2_dirent *dent;
	struct gfs2_leaf *leaf;
	int error;

	while(1) {
		dent = FUNC11(inode, name, gfs2_dirent_find_space,
					  &bh);
		if (dent) {
			if (FUNC1(dent))
				return FUNC2(dent);
			dent = FUNC12(inode, dent, name, bh);
			FUNC13(nip, dent);
			dent->de_type = FUNC6(type);
			if (ip->i_diskflags & GFS2_DIF_EXHASH) {
				leaf = (struct gfs2_leaf *)bh->b_data;
				FUNC4(&leaf->lf_entries, 1);
			}
			FUNC5(bh);
			ip->i_entries++;
			ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
			if (FUNC3(nip->i_inode.i_mode))
				FUNC14(&ip->i_inode);
			FUNC15(inode);
			error = 0;
			break;
		}
		if (!(ip->i_diskflags & GFS2_DIF_EXHASH)) {
			error = FUNC8(inode);
			if (error)
				break;
			continue;
		}
		error = FUNC10(inode, name);
		if (error == 0)
			continue;
		if (error < 0)
			break;
		if (ip->i_depth < GFS2_DIR_MAX_DEPTH) {
			error = FUNC7(ip);
			if (error)
				break;
			error = FUNC10(inode, name);
			if (error < 0)
				break;
			if (error == 0)
				continue;
		}
		error = FUNC9(inode, name);
		if (!error)
			continue;
		error = -ENOSPC;
		break;
	}
	return error;
}