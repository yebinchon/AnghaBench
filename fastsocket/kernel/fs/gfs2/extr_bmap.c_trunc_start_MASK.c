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
typedef  int u64 ;
struct inode {struct address_space* i_mapping; } ;
struct TYPE_3__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {TYPE_2__ i_inode; int /*<<< orphan*/  i_diskflags; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  GFS2_DIF_TRUNC_IN_PROG ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GFS2_JTRUNC_REVOKES ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_JDATA ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gfs2_inode*) ; 
 scalar_t__ FUNC7 (struct gfs2_inode*) ; 
 int FUNC8 (struct inode*,int,int) ; 
 int FUNC9 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC11 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int,int) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, u64 oldsize, u64 newsize)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct address_space *mapping = inode->i_mapping;
	struct buffer_head *dibh;
	int journaled = FUNC6(ip);
	int error;

	if (journaled)
		error = FUNC11(sdp, RES_DINODE + RES_JDATA, GFS2_JTRUNC_REVOKES);
	else
		error = FUNC11(sdp, RES_DINODE, 0);
	if (error)
		return error;

	error = FUNC9(ip, &dibh);
	if (error)
		goto out;

	FUNC10(ip->i_gl, dibh);

	if (FUNC7(ip)) {
		FUNC4(dibh, sizeof(struct gfs2_dinode) + newsize);
	} else {
		if (newsize & (u64)(sdp->sd_sb.sb_bsize - 1)) {
			error = FUNC3(mapping, newsize);
			if (error)
				goto out_brelse;
		}
		ip->i_diskflags |= GFS2_DIF_TRUNC_IN_PROG;
	}

	FUNC13(inode, newsize);
	ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
	FUNC5(ip, dibh->b_data);

	if (journaled)
		error = FUNC8(inode, oldsize, newsize);
	else
		FUNC14(inode, oldsize, newsize);

	if (error) {
		FUNC2(dibh);
		return error;
	}

out_brelse:
	FUNC2(dibh);
out:
	FUNC12(sdp);
	return error;
}