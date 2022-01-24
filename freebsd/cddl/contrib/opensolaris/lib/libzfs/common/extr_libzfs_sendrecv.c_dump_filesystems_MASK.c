#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  fss; int /*<<< orphan*/  fsavl; int /*<<< orphan*/  replicate; } ;
typedef  TYPE_2__ send_dump_data_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(zfs_handle_t *rzhp, void *arg)
{
	send_dump_data_t *sdd = arg;
	nvpair_t *fspair;
	boolean_t needagain, progress;

	if (!sdd->replicate)
		return (FUNC2(rzhp, sdd));

	/* Mark the clone origin snapshots. */
	for (fspair = FUNC10(sdd->fss, NULL); fspair;
	    fspair = FUNC10(sdd->fss, fspair)) {
		nvlist_t *nvfs;
		uint64_t origin_guid = 0;

		FUNC0(0 == FUNC12(fspair, &nvfs));
		(void) FUNC9(nvfs, "origin", &origin_guid);
		if (origin_guid != 0) {
			char *snapname;
			nvlist_t *origin_nv = FUNC3(sdd->fsavl,
			    origin_guid, &snapname);
			if (origin_nv != NULL) {
				nvlist_t *snapprops;
				FUNC0(0 == FUNC7(origin_nv,
				    "snapprops", &snapprops));
				FUNC0(0 == FUNC7(snapprops,
				    snapname, &snapprops));
				FUNC0(0 == FUNC4(
				    snapprops, "is_clone_origin"));
			}
		}
	}
again:
	needagain = progress = B_FALSE;
	for (fspair = FUNC10(sdd->fss, NULL); fspair;
	    fspair = FUNC10(sdd->fss, fspair)) {
		nvlist_t *fslist, *parent_nv;
		char *fsname;
		zfs_handle_t *zhp;
		int err;
		uint64_t origin_guid = 0;
		uint64_t parent_guid = 0;

		FUNC0(FUNC12(fspair, &fslist) == 0);
		if (FUNC6(fslist, "sent") == 0)
			continue;

		FUNC0(FUNC8(fslist, "name", &fsname) == 0);
		(void) FUNC9(fslist, "origin", &origin_guid);
		(void) FUNC9(fslist, "parentfromsnap",
		    &parent_guid);

		if (parent_guid != 0) {
			parent_nv = FUNC3(sdd->fsavl, parent_guid, NULL);
			if (!FUNC5(parent_nv, "sent")) {
				/* parent has not been sent; skip this one */
				needagain = B_TRUE;
				continue;
			}
		}

		if (origin_guid != 0) {
			nvlist_t *origin_nv = FUNC3(sdd->fsavl,
			    origin_guid, NULL);
			if (origin_nv != NULL &&
			    !FUNC5(origin_nv, "sent")) {
				/*
				 * origin has not been sent yet;
				 * skip this clone.
				 */
				needagain = B_TRUE;
				continue;
			}
		}

		zhp = FUNC14(rzhp->zfs_hdl, fsname, ZFS_TYPE_DATASET);
		if (zhp == NULL)
			return (-1);
		err = FUNC2(zhp, sdd);
		FUNC0(FUNC4(fslist, "sent") == 0);
		progress = B_TRUE;
		FUNC13(zhp);
		if (err)
			return (err);
	}
	if (needagain) {
		FUNC1(progress);
		goto again;
	}

	/* clean out the sent flags in case we reuse this fss */
	for (fspair = FUNC10(sdd->fss, NULL); fspair;
	    fspair = FUNC10(sdd->fss, fspair)) {
		nvlist_t *fslist;

		FUNC0(FUNC12(fspair, &fslist) == 0);
		(void) FUNC11(fslist, "sent");
	}

	return (0);
}