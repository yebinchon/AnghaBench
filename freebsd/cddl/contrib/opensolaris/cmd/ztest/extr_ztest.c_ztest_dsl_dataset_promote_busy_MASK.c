#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* zd_name; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  snap3name ;
typedef  int /*<<< orphan*/  snap2name ;
typedef  int /*<<< orphan*/  snap1name ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  clone2name ;
typedef  int /*<<< orphan*/  clone1name ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ANY ; 
 int EBUSY ; 
 int EEXIST ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (char*,scalar_t__) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(ztest_ds_t *zd, uint64_t id)
{
	objset_t *os;
	char snap1name[ZFS_MAX_DATASET_NAME_LEN];
	char clone1name[ZFS_MAX_DATASET_NAME_LEN];
	char snap2name[ZFS_MAX_DATASET_NAME_LEN];
	char clone2name[ZFS_MAX_DATASET_NAME_LEN];
	char snap3name[ZFS_MAX_DATASET_NAME_LEN];
	char *osname = zd->zd_name;
	int error;

	FUNC6(&ztest_name_lock, RW_READER);

	FUNC10(osname, id);

	(void) FUNC8(snap1name, sizeof (snap1name),
	    "%s@s1_%llu", osname, id);
	(void) FUNC8(clone1name, sizeof (clone1name),
	    "%s/c1_%llu", osname, id);
	(void) FUNC8(snap2name, sizeof (snap2name),
	    "%s@s2_%llu", clone1name, id);
	(void) FUNC8(clone2name, sizeof (clone2name),
	    "%s/c2_%llu", osname, id);
	(void) FUNC8(snap3name, sizeof (snap3name),
	    "%s@s3_%llu", clone1name, id);

	error = FUNC3(osname, FUNC9(snap1name, '@') + 1);
	if (error && error != EEXIST) {
		if (error == ENOSPC) {
			FUNC11(FTAG);
			goto out;
		}
		FUNC5(0, "dmu_take_snapshot(%s) = %d", snap1name, error);
	}

	error = FUNC0(clone1name, snap1name);
	if (error) {
		if (error == ENOSPC) {
			FUNC11(FTAG);
			goto out;
		}
		FUNC5(0, "dmu_objset_create(%s) = %d", clone1name, error);
	}

	error = FUNC3(clone1name, FUNC9(snap2name, '@') + 1);
	if (error && error != EEXIST) {
		if (error == ENOSPC) {
			FUNC11(FTAG);
			goto out;
		}
		FUNC5(0, "dmu_open_snapshot(%s) = %d", snap2name, error);
	}

	error = FUNC3(clone1name, FUNC9(snap3name, '@') + 1);
	if (error && error != EEXIST) {
		if (error == ENOSPC) {
			FUNC11(FTAG);
			goto out;
		}
		FUNC5(0, "dmu_open_snapshot(%s) = %d", snap3name, error);
	}

	error = FUNC0(clone2name, snap3name);
	if (error) {
		if (error == ENOSPC) {
			FUNC11(FTAG);
			goto out;
		}
		FUNC5(0, "dmu_objset_create(%s) = %d", clone2name, error);
	}

	error = FUNC2(snap2name, DMU_OST_ANY, B_TRUE, FTAG, &os);
	if (error)
		FUNC5(0, "dmu_objset_own(%s) = %d", snap2name, error);
	error = FUNC4(clone2name, NULL);
	if (error == ENOSPC) {
		FUNC1(os, FTAG);
		FUNC11(FTAG);
		goto out;
	}
	if (error != EBUSY)
		FUNC5(0, "dsl_dataset_promote(%s), %d, not EBUSY", clone2name,
		    error);
	FUNC1(os, FTAG);

out:
	FUNC10(osname, id);

	FUNC7(&ztest_name_lock);
}