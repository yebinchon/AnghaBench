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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {struct super_block* sd_vfs; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_no_formal_ino; int i_diskflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EIO ; 
 struct inode* FUNC0 (int) ; 
 int ESTALE ; 
 int GFS2_DIF_SYSTEM ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GL_SKIP ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int FUNC3 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_holder*) ; 
 int FUNC5 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  gfs2_inode_glops ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

struct inode *FUNC8(struct gfs2_sbd *sdp, u64 no_addr,
				  u64 *no_formal_ino, unsigned int blktype)
{
	struct super_block *sb = sdp->sd_vfs;
	struct gfs2_holder i_gh;
	struct inode *inode = NULL;
	int error;

	/* Must not read in block until block type is verified */
	error = FUNC5(sdp, no_addr, &gfs2_inode_glops,
				  LM_ST_EXCLUSIVE, GL_SKIP, &i_gh);
	if (error)
		return FUNC0(error);

	error = FUNC3(sdp, no_addr, blktype);
	if (error)
		goto fail;
	inode = FUNC6(sb, DT_UNKNOWN, no_addr, 0, 1);
	if (FUNC2(inode))
		goto fail;

	/* Two extra checks for NFS only */
	if (no_formal_ino) {
		error = -ESTALE;
		if (FUNC1(inode)->i_no_formal_ino != *no_formal_ino)
			goto fail_iput;

		error = -EIO;
		if (FUNC1(inode)->i_diskflags & GFS2_DIF_SYSTEM)
			goto fail_iput;

		error = 0;
	}

fail:
	FUNC4(&i_gh);
	return error ? FUNC0(error) : inode;
fail_iput:
	FUNC7(inode);
	goto fail;
}