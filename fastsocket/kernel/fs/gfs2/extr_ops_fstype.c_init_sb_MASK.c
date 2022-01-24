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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_bdev; } ;
struct TYPE_8__ {scalar_t__ ar_meta; } ;
struct TYPE_6__ {int /*<<< orphan*/  no_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  no_addr; } ;
struct TYPE_7__ {scalar_t__ sb_bsize; TYPE_2__ sb_master_dir; TYPE_1__ sb_root_dir; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_root_dir; int /*<<< orphan*/  sd_master_dir; TYPE_4__ sd_args; TYPE_3__ sd_sb; struct super_block* sd_vfs; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFS2_SB_LOCK ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_holder*) ; 
 int FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC6 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gfs2_meta_glops ; 
 int FUNC7 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct gfs2_sbd *sdp, int silent)
{
	struct super_block *sb = sdp->sd_vfs;
	struct gfs2_holder sb_gh;
	u64 no_addr;
	int ret;

	ret = FUNC5(sdp, GFS2_SB_LOCK, &gfs2_meta_glops,
				LM_ST_SHARED, 0, &sb_gh);
	if (ret) {
		FUNC3(sdp, "can't acquire superblock glock: %d\n", ret);
		return ret;
	}

	ret = FUNC7(sdp, silent);
	if (ret) {
		FUNC3(sdp, "can't read superblock: %d\n", ret);
		goto out;
	}

	/* Set up the buffer cache and SB for real */
	if (sdp->sd_sb.sb_bsize < FUNC0(sb->s_bdev)) {
		ret = -EINVAL;
		FUNC3(sdp, "FS block size (%u) is too small for device "
		       "block size (%u)\n",
		       sdp->sd_sb.sb_bsize, FUNC0(sb->s_bdev));
		goto out;
	}
	if (sdp->sd_sb.sb_bsize > PAGE_SIZE) {
		ret = -EINVAL;
		FUNC3(sdp, "FS block size (%u) is too big for machine "
		       "page size (%u)\n",
		       sdp->sd_sb.sb_bsize, (unsigned int)PAGE_SIZE);
		goto out;
	}
	FUNC8(sb, sdp->sd_sb.sb_bsize);

	/* Get the root inode */
	no_addr = sdp->sd_sb.sb_root_dir.no_addr;
	ret = FUNC6(sb, &sdp->sd_root_dir, no_addr, "root");
	if (ret)
		goto out;

	/* Get the master inode */
	no_addr = sdp->sd_sb.sb_master_dir.no_addr;
	ret = FUNC6(sb, &sdp->sd_master_dir, no_addr, "master");
	if (ret) {
		FUNC2(sdp->sd_root_dir);
		goto out;
	}
	sb->s_root = FUNC1(sdp->sd_args.ar_meta ? sdp->sd_master_dir : sdp->sd_root_dir);
out:
	FUNC4(&sb_gh);
	return ret;
}