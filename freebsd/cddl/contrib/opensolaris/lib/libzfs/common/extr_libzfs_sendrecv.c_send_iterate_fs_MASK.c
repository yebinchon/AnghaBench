#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ dds_creation_txg; scalar_t__ dds_guid; scalar_t__* dds_origin; } ;
struct TYPE_14__ {TYPE_1__ zfs_dmustats; int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ parent_fromsnap_guid; scalar_t__ fromsnap_txg; scalar_t__ tosnap_txg; scalar_t__ recursive; int /*<<< orphan*/ * fss; int /*<<< orphan*/ * snapprops; int /*<<< orphan*/ * parent_snaps; int /*<<< orphan*/  replicate; int /*<<< orphan*/ * tosnap; int /*<<< orphan*/  fsname; scalar_t__ verbose; int /*<<< orphan*/ * fromsnap; } ;
typedef  TYPE_3__ send_data_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  guidstring ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_iterate_snap ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_2__*,int (*) (TYPE_2__*,void*),TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(zfs_handle_t *zhp, void *arg)
{
	send_data_t *sd = arg;
	nvlist_t *nvfs, *nv;
	int rv = 0;
	uint64_t min_txg = 0, max_txg = 0;
	uint64_t parent_fromsnap_guid_save = sd->parent_fromsnap_guid;
	uint64_t fromsnap_txg_save = sd->fromsnap_txg;
	uint64_t tosnap_txg_save = sd->tosnap_txg;
	uint64_t txg = zhp->zfs_dmustats.dds_creation_txg;
	uint64_t guid = zhp->zfs_dmustats.dds_guid;
	uint64_t fromsnap_txg, tosnap_txg;
	char guidstring[64];

	fromsnap_txg = FUNC7(zhp->zfs_hdl, zhp->zfs_name, sd->fromsnap);
	if (fromsnap_txg != 0)
		sd->fromsnap_txg = fromsnap_txg;

	tosnap_txg = FUNC7(zhp->zfs_hdl, zhp->zfs_name, sd->tosnap);
	if (tosnap_txg != 0)
		sd->tosnap_txg = tosnap_txg;

	/*
	 * on the send side, if the current dataset does not have tosnap,
	 * perform two additional checks:
	 *
	 * - skip sending the current dataset if it was created later than
	 *   the parent tosnap
	 * - return error if the current dataset was created earlier than
	 *   the parent tosnap
	 */
	if (sd->tosnap != NULL && tosnap_txg == 0) {
		if (sd->tosnap_txg != 0 && txg > sd->tosnap_txg) {
			if (sd->verbose) {
				(void) FUNC6(stderr, FUNC1(TEXT_DOMAIN,
				    "skipping dataset %s: snapshot %s does "
				    "not exist\n"), zhp->zfs_name, sd->tosnap);
			}
		} else {
			(void) FUNC6(stderr, FUNC1(TEXT_DOMAIN,
			    "cannot send %s@%s%s: snapshot %s@%s does not "
			    "exist\n"), sd->fsname, sd->tosnap, sd->recursive ?
			    FUNC1(TEXT_DOMAIN, " recursively") : "",
			    zhp->zfs_name, sd->tosnap);
			rv = -1;
		}
		goto out;
	}

	nvfs = FUNC4();
	FUNC2(nvfs, "name", zhp->zfs_name);
	FUNC3(nvfs, "parentfromsnap",
	    sd->parent_fromsnap_guid);

	if (zhp->zfs_dmustats.dds_origin[0]) {
		zfs_handle_t *origin = FUNC17(zhp->zfs_hdl,
		    zhp->zfs_dmustats.dds_origin, ZFS_TYPE_SNAPSHOT);
		if (origin == NULL) {
			rv = -1;
			goto out;
		}
		FUNC0(0 == FUNC9(nvfs, "origin",
		    origin->zfs_dmustats.dds_guid));
	}

	/* iterate over props */
	FUNC0(0 == FUNC10(&nv, NV_UNIQUE_NAME, 0));
	FUNC12(zhp, nv);
	FUNC0(0 == FUNC8(nvfs, "props", nv));
	FUNC11(nv);

	/* iterate over snaps, and set sd->parent_fromsnap_guid */
	if (!sd->replicate && fromsnap_txg != 0)
		min_txg = fromsnap_txg;
	if (!sd->replicate && tosnap_txg != 0)
		max_txg = tosnap_txg;
	sd->parent_fromsnap_guid = 0;
	FUNC0(0 == FUNC10(&sd->parent_snaps, NV_UNIQUE_NAME, 0));
	FUNC0(0 == FUNC10(&sd->snapprops, NV_UNIQUE_NAME, 0));
	(void) FUNC16(zhp, send_iterate_snap, sd,
	    min_txg, max_txg);
	FUNC0(0 == FUNC8(nvfs, "snaps", sd->parent_snaps));
	FUNC0(0 == FUNC8(nvfs, "snapprops", sd->snapprops));
	FUNC5(sd->parent_snaps);
	FUNC5(sd->snapprops);

	/* add this fs to nvlist */
	(void) FUNC13(guidstring, sizeof (guidstring),
	    "0x%llx", (longlong_t)guid);
	FUNC0(0 == FUNC8(sd->fss, guidstring, nvfs));
	FUNC11(nvfs);

	/* iterate over children */
	if (sd->recursive)
		rv = FUNC15(zhp, send_iterate_fs, sd);

out:
	sd->parent_fromsnap_guid = parent_fromsnap_guid_save;
	sd->fromsnap_txg = fromsnap_txg_save;
	sd->tosnap_txg = tosnap_txg_save;

	FUNC14(zhp);
	return (rv);
}