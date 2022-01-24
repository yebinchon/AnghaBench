#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* fi_uname; char* fi_guid; int /*<<< orphan*/  fi_flags; int /*<<< orphan*/  fi_feature; int /*<<< orphan*/ * fi_depends; int /*<<< orphan*/ * fi_desc; } ;
typedef  TYPE_1__ zfeature_info_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  spa_feat_for_write_obj; int /*<<< orphan*/  spa_feat_for_read_obj; int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  spa_feature_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFEATURE_FLAG_MOS ; 
 int /*<<< orphan*/  ZFEATURE_FLAG_READONLY_COMPAT ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  feature_decr_sync ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  feature_incr_sync ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char FUNC5 (int,char**,char*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 

__attribute__((used)) static void
FUNC13(int argc, char **argv)
{
	char c;
	char *target;
	boolean_t decr = B_FALSE;
	spa_t *spa;
	objset_t *mos;
	zfeature_info_t feature;
	spa_feature_t nodeps[] = { SPA_FEATURE_NONE };

	/*
	 * fi_desc does not matter here because it was written to disk
	 * when the feature was enabled, but we need to properly set the
	 * feature for read or write based on the information we read off
	 * disk later.
	 */
	feature.fi_uname = "zhack";
	feature.fi_flags = 0;
	feature.fi_desc = NULL;
	feature.fi_depends = nodeps;
	feature.fi_feature = SPA_FEATURE_NONE;

	optind = 1;
	while ((c = FUNC5(argc, argv, "md")) != -1) {
		switch (c) {
		case 'm':
			feature.fi_flags |= ZFEATURE_FLAG_MOS;
			break;
		case 'd':
			decr = B_TRUE;
			break;
		default:
			FUNC8();
			break;
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 2) {
		(void) FUNC4(stderr, "error: missing feature or pool name\n");
		FUNC8();
	}
	target = argv[0];
	feature.fi_guid = argv[1];

	if (!FUNC11(feature.fi_guid))
		FUNC2(NULL, FTAG, "invalid feature guid: %s", feature.fi_guid);

	FUNC12(target, B_FALSE, FTAG, &spa);
	mos = spa->spa_meta_objset;

	if (FUNC10(feature.fi_guid)) {
		FUNC2(spa, FTAG,
		    "'%s' is a real feature, will not change refcount");
	}

	if (0 == FUNC9(mos, spa->spa_feat_for_read_obj,
	    feature.fi_guid)) {
		feature.fi_flags &= ~ZFEATURE_FLAG_READONLY_COMPAT;
	} else if (0 == FUNC9(mos, spa->spa_feat_for_write_obj,
	    feature.fi_guid)) {
		feature.fi_flags |= ZFEATURE_FLAG_READONLY_COMPAT;
	} else {
		FUNC2(spa, FTAG, "feature is not enabled: %s", feature.fi_guid);
	}

	if (decr) {
		uint64_t count;
		if (FUNC3(spa, &feature,
		    &count) == 0 && count != 0) {
			FUNC2(spa, FTAG, "feature refcount already 0: %s",
			    feature.fi_guid);
		}
	}

	FUNC0(FUNC1(FUNC7(spa), NULL,
	    decr ? feature_decr_sync : feature_incr_sync, &feature,
	    5, ZFS_SPACE_CHECK_NORMAL));

	FUNC6(spa, FTAG);
}