#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct seq_file {int dummy; } ;
struct TYPE_9__ {scalar_t__ uid; scalar_t__ gid; scalar_t__ fmask; scalar_t__ dmask; int on_errors; scalar_t__ mft_zone_multiplier; TYPE_1__* nls_map; } ;
typedef  TYPE_2__ ntfs_volume ;
struct TYPE_10__ {int val; scalar_t__ str; } ;
struct TYPE_8__ {scalar_t__ charset; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_3__* on_errors_arr ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 

int FUNC5(struct seq_file *sf, struct vfsmount *mnt)
{
	ntfs_volume *vol = FUNC0(mnt->mnt_sb);
	int i;

	FUNC4(sf, ",uid=%i", vol->uid);
	FUNC4(sf, ",gid=%i", vol->gid);
	if (vol->fmask == vol->dmask)
		FUNC4(sf, ",umask=0%o", vol->fmask);
	else {
		FUNC4(sf, ",fmask=0%o", vol->fmask);
		FUNC4(sf, ",dmask=0%o", vol->dmask);
	}
	FUNC4(sf, ",nls=%s", vol->nls_map->charset);
	if (FUNC1(vol))
		FUNC4(sf, ",case_sensitive");
	if (FUNC2(vol))
		FUNC4(sf, ",show_sys_files");
	if (!FUNC3(vol))
		FUNC4(sf, ",disable_sparse");
	for (i = 0; on_errors_arr[i].val; i++) {
		if (on_errors_arr[i].val & vol->on_errors)
			FUNC4(sf, ",errors=%s", on_errors_arr[i].str);
	}
	FUNC4(sf, ",mft_zone_multiplier=%i", vol->mft_zone_multiplier);
	return 0;
}