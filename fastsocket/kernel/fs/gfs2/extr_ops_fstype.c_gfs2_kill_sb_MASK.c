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
struct gfs2_sbd {int /*<<< orphan*/ * sd_master_dir; int /*<<< orphan*/ * sd_root_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;

	if (sdp == NULL) {
		FUNC3(sb);
		return;
	}

	FUNC2(sdp);
	FUNC0(sdp->sd_root_dir);
	FUNC0(sdp->sd_master_dir);
	sdp->sd_root_dir = NULL;
	sdp->sd_master_dir = NULL;
	FUNC4(sb);
	FUNC1(sdp);
	FUNC3(sb);
}