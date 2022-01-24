#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* pl_next; int /*<<< orphan*/  pl_width; int /*<<< orphan*/  pl_prop; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zprop_list_t ;
struct TYPE_8__ {TYPE_1__* cb_proplist; void** cb_columns; void* cb_scripted; void* cb_literal; int /*<<< orphan*/  cb_type; int /*<<< orphan*/  cb_sources; void* cb_first; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zprop_get_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 void* B_TRUE ; 
 void* GET_COL_NAME ; 
 void* GET_COL_PROPERTY ; 
 void* GET_COL_SOURCE ; 
 void* GET_COL_VALUE ; 
 int ZFS_GET_NCOLS ; 
 int /*<<< orphan*/  ZFS_TYPE_POOL ; 
 int /*<<< orphan*/  ZPOOL_PROP_NAME ; 
 int /*<<< orphan*/  ZPROP_SRC_ALL ; 
 int /*<<< orphan*/  FUNC0 (void***,int) ; 
 int FUNC1 (int,char**,void*,TYPE_1__**,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  get_callback ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char**,char**) ; 
 char* FUNC5 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* suboptarg ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,TYPE_1__**,int /*<<< orphan*/ ) ; 

int
FUNC10(int argc, char **argv)
{
	zprop_get_cbdata_t cb = { 0 };
	zprop_list_t fake_name = { 0 };
	int ret;
	int c, i;
	char *value;

	cb.cb_first = B_TRUE;

	/*
	 * Set up default columns and sources.
	 */
	cb.cb_sources = ZPROP_SRC_ALL;
	cb.cb_columns[0] = GET_COL_NAME;
	cb.cb_columns[1] = GET_COL_PROPERTY;
	cb.cb_columns[2] = GET_COL_VALUE;
	cb.cb_columns[3] = GET_COL_SOURCE;
	cb.cb_type = ZFS_TYPE_POOL;

	/* check options */
	while ((c = FUNC3(argc, argv, ":Hpo:")) != -1) {
		switch (c) {
		case 'p':
			cb.cb_literal = B_TRUE;
			break;
		case 'H':
			cb.cb_scripted = B_TRUE;
			break;
		case 'o':
			FUNC0(&cb.cb_columns, sizeof (cb.cb_columns));
			i = 0;
			while (*optarg != '\0') {
				static char *col_subopts[] =
				{ "name", "property", "value", "source",
				"all", NULL };

				if (i == ZFS_GET_NCOLS) {
					(void) FUNC2(stderr, "%s", FUNC5("too "
					"many fields given to -o "
					"option\n"));
					FUNC7(B_FALSE);
				}

				switch (FUNC4(&optarg, col_subopts,
				    &value)) {
				case 0:
					cb.cb_columns[i++] = GET_COL_NAME;
					break;
				case 1:
					cb.cb_columns[i++] = GET_COL_PROPERTY;
					break;
				case 2:
					cb.cb_columns[i++] = GET_COL_VALUE;
					break;
				case 3:
					cb.cb_columns[i++] = GET_COL_SOURCE;
					break;
				case 4:
					if (i > 0) {
						(void) FUNC2(stderr,
						    "%s", FUNC5("\"all\" conflicts "
						    "with specific fields "
						    "given to -o option\n"));
						FUNC7(B_FALSE);
					}
					cb.cb_columns[0] = GET_COL_NAME;
					cb.cb_columns[1] = GET_COL_PROPERTY;
					cb.cb_columns[2] = GET_COL_VALUE;
					cb.cb_columns[3] = GET_COL_SOURCE;
					i = ZFS_GET_NCOLS;
					break;
				default:
					(void) FUNC2(stderr,
					    FUNC5("invalid column name "
					    "'%s'\n"), suboptarg);
					FUNC7(B_FALSE);
				}
			}
			break;
		case '?':
			(void) FUNC2(stderr, FUNC5("invalid option '%c'\n"),
			    optopt);
			FUNC7(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void) FUNC2(stderr, "%s", FUNC5("missing property "
		    "argument\n"));
		FUNC7(B_FALSE);
	}

	if (FUNC9(g_zfs, argv[0], &cb.cb_proplist,
	    ZFS_TYPE_POOL) != 0)
		FUNC7(B_FALSE);

	argc--;
	argv++;

	if (cb.cb_proplist != NULL) {
		fake_name.pl_prop = ZPOOL_PROP_NAME;
		fake_name.pl_width = FUNC6(FUNC5("NAME"));
		fake_name.pl_next = cb.cb_proplist;
		cb.cb_proplist = &fake_name;
	}

	ret = FUNC1(argc, argv, B_TRUE, &cb.cb_proplist,
	    get_callback, &cb);

	if (cb.cb_proplist == &fake_name)
		FUNC8(fake_name.pl_next);
	else
		FUNC8(cb.cb_proplist);

	return (ret);
}