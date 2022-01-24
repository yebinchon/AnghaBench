#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_flags; int /*<<< orphan*/ * s_fs_info; TYPE_2__* s_bdev; } ;
struct TYPE_12__ {int /*<<< orphan*/  kset; } ;
struct TYPE_10__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {TYPE_3__ sd_kobj; int /*<<< orphan*/  sd_table_name; TYPE_1__ sd_args; struct super_block* sd_vfs; } ;
struct TYPE_13__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_11__ {int /*<<< orphan*/  bd_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 int MS_RDONLY ; 
 TYPE_9__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  gfs2_kset ; 
 int /*<<< orphan*/  gfs2_ktype ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  lock_module_group ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tune_group ; 

int FUNC10(struct gfs2_sbd *sdp)
{
	struct super_block *sb = sdp->sd_vfs;
	int error;
	char ro[20];
	char spectator[20];
	char *envp[] = { ro, spectator, NULL };
	int sysfs_frees_sdp = 0;

	FUNC6(ro, "RDONLY=%d", (sb->s_flags & MS_RDONLY) ? 1 : 0);
	FUNC6(spectator, "SPECTATOR=%d", sdp->sd_args.ar_spectator ? 1 : 0);

	sdp->sd_kobj.kset = gfs2_kset;
	error = FUNC3(&sdp->sd_kobj, &gfs2_ktype, NULL,
				     "%s", sdp->sd_table_name);
	if (error)
		goto fail_reg;

	sysfs_frees_sdp = 1; /* Freeing sdp is now done by sysfs calling
				function gfs2_sbd_release. */
	error = FUNC7(&sdp->sd_kobj, &tune_group);
	if (error)
		goto fail_reg;

	error = FUNC7(&sdp->sd_kobj, &lock_module_group);
	if (error)
		goto fail_tune;

	error = FUNC8(&sdp->sd_kobj,
				  &FUNC0(sb->s_bdev->bd_disk)->kobj,
				  "device");
	if (error)
		goto fail_lock_module;

	FUNC5(&sdp->sd_kobj, KOBJ_ADD, envp);
	return 0;

fail_lock_module:
	FUNC9(&sdp->sd_kobj, &lock_module_group);
fail_tune:
	FUNC9(&sdp->sd_kobj, &tune_group);
fail_reg:
	FUNC1(sdp, "error %d adding sysfs files", error);
	if (sysfs_frees_sdp)
		FUNC4(&sdp->sd_kobj);
	else
		FUNC2(sdp);
	sb->s_fs_info = NULL;
	return error;
}