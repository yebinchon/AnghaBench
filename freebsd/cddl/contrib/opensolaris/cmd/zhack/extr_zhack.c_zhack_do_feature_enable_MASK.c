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
struct TYPE_8__ {char* fi_uname; char* fi_desc; char* fi_guid; scalar_t__ fi_flags; int /*<<< orphan*/  fi_feature; int /*<<< orphan*/ * fi_depends; } ;
typedef  TYPE_1__ zfeature_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  spa_feat_desc_obj; int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  spa_feature_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFEATURE_FLAG_READONLY_COMPAT ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  zhack_feature_enable_sync ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 

__attribute__((used)) static void
FUNC14(int argc, char **argv)
{
	char c;
	char *desc, *target;
	spa_t *spa;
	objset_t *mos;
	zfeature_info_t feature;
	spa_feature_t nodeps[] = { SPA_FEATURE_NONE };

	/*
	 * Features are not added to the pool's label until their refcounts
	 * are incremented, so fi_mos can just be left as false for now.
	 */
	desc = NULL;
	feature.fi_uname = "zhack";
	feature.fi_flags = 0;
	feature.fi_depends = nodeps;
	feature.fi_feature = SPA_FEATURE_NONE;

	optind = 1;
	while ((c = FUNC5(argc, argv, "rmd:")) != -1) {
		switch (c) {
		case 'r':
			feature.fi_flags |= ZFEATURE_FLAG_READONLY_COMPAT;
			break;
		case 'd':
			desc = FUNC8(optarg);
			break;
		default:
			FUNC9();
			break;
		}
	}

	if (desc == NULL)
		desc = FUNC8("zhack injected");
	feature.fi_desc = desc;

	argc -= optind;
	argv += optind;

	if (argc < 2) {
		(void) FUNC3(stderr, "error: missing feature or pool name\n");
		FUNC9();
	}
	target = argv[0];
	feature.fi_guid = argv[1];

	if (!FUNC12(feature.fi_guid))
		FUNC2(NULL, FTAG, "invalid feature guid: %s", feature.fi_guid);

	FUNC13(target, B_FALSE, FTAG, &spa);
	mos = spa->spa_meta_objset;

	if (FUNC11(feature.fi_guid))
		FUNC2(spa, FTAG, "'%s' is a real feature, will not enable");
	if (0 == FUNC10(mos, spa->spa_feat_desc_obj, feature.fi_guid))
		FUNC2(spa, FTAG, "feature already enabled: %s",
		    feature.fi_guid);

	FUNC0(FUNC1(FUNC7(spa), NULL,
	    zhack_feature_enable_sync, &feature, 5, ZFS_SPACE_CHECK_NORMAL));

	FUNC6(spa, FTAG);

	FUNC4(desc);
}