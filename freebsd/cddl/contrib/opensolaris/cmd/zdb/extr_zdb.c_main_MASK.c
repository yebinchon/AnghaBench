#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct rlimit {int member_0; int member_1; } ;
struct TYPE_8__ {scalar_t__ spa_log_state; int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ANY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME_TYPE ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 scalar_t__ SPA_LOG_CLEAR ; 
 scalar_t__ SPA_LOG_MISSING ; 
 void* TXG_INITIAL ; 
 void* UINT64_MAX ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  ZDB_FLAG_BSWAP ; 
 int /*<<< orphan*/  ZDB_FLAG_CHECKSUM ; 
 int /*<<< orphan*/  ZDB_FLAG_DECOMPRESS ; 
 int /*<<< orphan*/  ZDB_FLAG_GBH ; 
 int /*<<< orphan*/  ZDB_FLAG_INDIRECT ; 
 int /*<<< orphan*/  ZDB_FLAG_PHYS ; 
 int /*<<< orphan*/  ZDB_FLAG_PRINT_BLKPTR ; 
 int /*<<< orphan*/  ZDB_FLAG_RAW ; 
 int ZFS_IMPORT_MISSING_LOG ; 
 int ZFS_IMPORT_VERBATIM ; 
 int ZPOOL_DO_REWIND ; 
 int ZPOOL_EXTREME_REWIND ; 
 int /*<<< orphan*/  ZPOOL_LOAD_POLICY ; 
 int /*<<< orphan*/  ZPOOL_LOAD_REQUEST_TXG ; 
 int /*<<< orphan*/  ZPOOL_LOAD_REWIND_POLICY ; 
 int ZPOOL_NEVER_REWIND ; 
 int aok ; 
 int /*<<< orphan*/  FUNC2 (char**,char**,int) ; 
 scalar_t__* FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int* dump_opt ; 
 int FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 char* FUNC15 (char**,int /*<<< orphan*/ **,int,char**) ; 
 int /*<<< orphan*/ * flagbits ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/ * g_zfs ; 
 char* FUNC19 (char*) ; 
 int FUNC20 (int,char**,char*) ; 
 char* FUNC21 (char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 void* max_inflight ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int FUNC33 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 void* reference_tracking_enable ; 
 int FUNC35 (char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* spa_config_path ; 
 int FUNC38 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* spa_load_verify_dryrun ; 
 TYPE_1__* FUNC39 (char*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC40 (char*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC41 (char*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC42 (char*,int) ; 
 int FUNC43 (int) ; 
 size_t FUNC44 (char*) ; 
 int /*<<< orphan*/ * FUNC45 (char*,char*) ; 
 void* FUNC46 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char** FUNC47 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (char**,int) ; 
 int /*<<< orphan*/  FUNC49 () ; 
 char* vn_dumpdir ; 
 int /*<<< orphan*/  FUNC50 (char*) ; 
 int /*<<< orphan*/  FUNC51 (char*,TYPE_1__*) ; 
 int zfs_arc_max ; 
 int zfs_arc_meta_limit ; 
 int zfs_recover ; 
 int zfs_vdev_async_read_max_active ; 
 scalar_t__* zopt_object ; 
 unsigned int zopt_objects ; 

int
FUNC52(int argc, char **argv)
{
	int c;
	struct rlimit rl = { 1024, 1024 };
	spa_t *spa = NULL;
	objset_t *os = NULL;
	int dump_all = 1;
	int verbose = 0;
	int error = 0;
	char **searchdirs = NULL;
	int nsearch = 0;
	char *target;
	nvlist_t *policy = NULL;
	uint64_t max_txg = UINT64_MAX;
	int flags = ZFS_IMPORT_MISSING_LOG;
	int rewind = ZPOOL_NEVER_REWIND;
	char *spa_config_path_env;
	boolean_t target_is_spa = B_TRUE;
	nvlist_t *cfg = NULL;

	(void) FUNC36(RLIMIT_NOFILE, &rl);
	(void) FUNC13(-1, -1);

	FUNC5(&argc, argv);

	/*
	 * If there is an environment variable SPA_CONFIG_PATH it overrides
	 * default spa_config_path setting. If -U flag is specified it will
	 * override this environment variable settings once again.
	 */
	spa_config_path_env = FUNC19("SPA_CONFIG_PATH");
	if (spa_config_path_env != NULL)
		spa_config_path = spa_config_path_env;

	while ((c = FUNC20(argc, argv,
	    "AbcCdDeEFGhiI:klLmMo:Op:PqRsSt:uU:vVx:X")) != -1) {
		switch (c) {
		case 'b':
		case 'c':
		case 'C':
		case 'd':
		case 'D':
		case 'E':
		case 'G':
		case 'h':
		case 'i':
		case 'l':
		case 'm':
		case 'M':
		case 'O':
		case 'R':
		case 's':
		case 'S':
		case 'u':
			dump_opt[c]++;
			dump_all = 0;
			break;
		case 'A':
		case 'e':
		case 'F':
		case 'k':
		case 'L':
		case 'P':
		case 'q':
		case 'X':
			dump_opt[c]++;
			break;
		/* NB: Sort single match options below. */
		case 'I':
			max_inflight = FUNC46(optarg, NULL, 0);
			if (max_inflight == 0) {
				(void) FUNC16(stderr, "maximum number "
				    "of inflight I/Os must be greater "
				    "than 0\n");
				FUNC49();
			}
			break;
		case 'o':
			error = FUNC35(optarg);
			if (error != 0)
				FUNC49();
			break;
		case 'p':
			if (searchdirs == NULL) {
				searchdirs = FUNC47(sizeof (char *),
				    UMEM_NOFAIL);
			} else {
				char **tmp = FUNC47((nsearch + 1) *
				    sizeof (char *), UMEM_NOFAIL);
				FUNC2(searchdirs, tmp, nsearch *
				    sizeof (char *));
				FUNC48(searchdirs,
				    nsearch * sizeof (char *));
				searchdirs = tmp;
			}
			searchdirs[nsearch++] = optarg;
			break;
		case 't':
			max_txg = FUNC46(optarg, NULL, 0);
			if (max_txg < TXG_INITIAL) {
				(void) FUNC16(stderr, "incorrect txg "
				    "specified: %s\n", optarg);
				FUNC49();
			}
			break;
		case 'U':
			spa_config_path = optarg;
			if (spa_config_path[0] != '/') {
				(void) FUNC16(stderr,
				    "cachefile must be an absolute path "
				    "(i.e. start with a slash)\n");
				FUNC49();
			}
			break;
		case 'v':
			verbose++;
			break;
		case 'V':
			flags = ZFS_IMPORT_VERBATIM;
			break;
		case 'x':
			vn_dumpdir = optarg;
			break;
		default:
			FUNC49();
			break;
		}
	}

	if (!dump_opt['e'] && searchdirs != NULL) {
		(void) FUNC16(stderr, "-p option requires use of -e\n");
		FUNC49();
	}

	/*
	 * ZDB does not typically re-read blocks; therefore limit the ARC
	 * to 256 MB, which can be used entirely for metadata.
	 */
	zfs_arc_max = zfs_arc_meta_limit = 256 * 1024 * 1024;

	/*
	 * "zdb -c" uses checksum-verifying scrub i/os which are async reads.
	 * "zdb -b" uses traversal prefetch which uses async reads.
	 * For good performance, let several of them be active at once.
	 */
	zfs_vdev_async_read_max_active = 10;

	/*
	 * Disable reference tracking for better performance.
	 */
	reference_tracking_enable = B_FALSE;

	/*
	 * Do not fail spa_load when spa_load_verify fails. This is needed
	 * to load non-idle pools.
	 */
	spa_load_verify_dryrun = B_TRUE;

	FUNC23(FREAD);
	g_zfs = FUNC25();
	if (g_zfs == NULL)
		FUNC14("Fail to initialize zfs");

	if (dump_all)
		verbose = FUNC1(verbose, 1);

	for (c = 0; c < 256; c++) {
		if (dump_all && FUNC42("AeEFklLOPRSX", c) == NULL)
			dump_opt[c] = 1;
		if (dump_opt[c])
			dump_opt[c] += verbose;
	}

	aok = (dump_opt['A'] == 1) || (dump_opt['A'] > 2);
	zfs_recover = (dump_opt['A'] > 1);

	argc -= optind;
	argv += optind;

	if (argc < 2 && dump_opt['R'])
		FUNC49();

	if (dump_opt['E']) {
		if (argc != 1)
			FUNC49();
		FUNC50(argv[0]);
		return (0);
	}

	if (argc < 1) {
		if (!dump_opt['e'] && dump_opt['C']) {
			FUNC6(spa_config_path);
			return (0);
		}
		FUNC49();
	}

	if (dump_opt['l'])
		return (FUNC9(argv[0]));

	if (dump_opt['O']) {
		if (argc != 2)
			FUNC49();
		dump_opt['v'] = verbose + 3;
		return (FUNC11(argv[0], argv[1]));
	}

	if (dump_opt['X'] || dump_opt['F'])
		rewind = ZPOOL_DO_REWIND |
		    (dump_opt['X'] ? ZPOOL_EXTREME_REWIND : 0);

	if (FUNC31(&policy, NV_UNIQUE_NAME_TYPE, 0) != 0 ||
	    FUNC30(policy, ZPOOL_LOAD_REQUEST_TXG, max_txg) != 0 ||
	    FUNC29(policy, ZPOOL_LOAD_REWIND_POLICY, rewind) != 0)
		FUNC14("internal error: %s", FUNC43(ENOMEM));

	error = 0;
	target = argv[0];

	if (dump_opt['e']) {
		char *name = FUNC15(&target, &cfg, nsearch, searchdirs);

		error = ENOENT;
		if (name) {
			if (dump_opt['C'] > 1) {
				(void) FUNC34("\nConfiguration for import:\n");
				FUNC10(cfg, 8);
			}

			if (FUNC28(cfg,
			    ZPOOL_LOAD_POLICY, policy) != 0) {
				FUNC14("can't open '%s': %s",
				    target, FUNC43(ENOMEM));
			}
			error = FUNC38(name, cfg, NULL, flags);
		}
	}

	char *checkpoint_pool = NULL;
	char *checkpoint_target = NULL;
	if (dump_opt['k']) {
		checkpoint_pool = FUNC21(target, cfg,
		    &checkpoint_target);

		if (checkpoint_target != NULL)
			target = checkpoint_target;

	}

	if (FUNC45(target, "/@") != NULL) {
		size_t targetlen;

		target_is_spa = B_FALSE;
		/*
		 * Remove any trailing slash.  Later code would get confused
		 * by it, but we want to allow it so that "pool/" can
		 * indicate that we want to dump the topmost filesystem,
		 * rather than the whole pool.
		 */
		targetlen = FUNC44(target);
		if (targetlen != 0 && target[targetlen - 1] == '/')
			target[targetlen - 1] = '\0';
	}

	if (error == 0) {
		if (dump_opt['k'] && (target_is_spa || dump_opt['R'])) {
			FUNC0(checkpoint_pool != NULL);
			FUNC0(checkpoint_target == NULL);

			error = FUNC40(checkpoint_pool, &spa, FTAG);
			if (error != 0) {
				FUNC14("Tried to open pool \"%s\" but "
				    "spa_open() failed with error %d\n",
				    checkpoint_pool, error);
			}

		} else if (target_is_spa || dump_opt['R']) {
			error = FUNC41(target, &spa, FTAG, policy,
			    NULL);
			if (error) {
				/*
				 * If we're missing the log device then
				 * try opening the pool after clearing the
				 * log state.
				 */
				FUNC26(&spa_namespace_lock);
				if ((spa = FUNC39(target)) != NULL &&
				    spa->spa_log_state == SPA_LOG_MISSING) {
					spa->spa_log_state = SPA_LOG_CLEAR;
					error = 0;
				}
				FUNC27(&spa_namespace_lock);

				if (!error) {
					error = FUNC41(target, &spa,
					    FTAG, policy, NULL);
				}
			}
		} else {
			error = FUNC33(target, DMU_OST_ANY, FTAG, &os);
		}
	}
	FUNC32(policy);

	if (error)
		FUNC14("can't open '%s': %s", target, FUNC43(error));

	argv++;
	argc--;
	if (!dump_opt['R']) {
		if (argc > 0) {
			zopt_objects = argc;
			zopt_object = FUNC3(zopt_objects, sizeof (uint64_t));
			for (unsigned i = 0; i < zopt_objects; i++) {
				errno = 0;
				zopt_object[i] = FUNC46(argv[i], NULL, 0);
				if (zopt_object[i] == 0 && errno != 0)
					FUNC14("bad number %s: %s",
					    argv[i], FUNC43(errno));
			}
		}
		if (os != NULL) {
			FUNC8(os);
		} else if (zopt_objects > 0 && !dump_opt['m']) {
			FUNC8(spa->spa_meta_objset);
		} else {
			FUNC12(spa);
		}
	} else {
		flagbits['b'] = ZDB_FLAG_PRINT_BLKPTR;
		flagbits['c'] = ZDB_FLAG_CHECKSUM;
		flagbits['d'] = ZDB_FLAG_DECOMPRESS;
		flagbits['e'] = ZDB_FLAG_BSWAP;
		flagbits['g'] = ZDB_FLAG_GBH;
		flagbits['i'] = ZDB_FLAG_INDIRECT;
		flagbits['p'] = ZDB_FLAG_PHYS;
		flagbits['r'] = ZDB_FLAG_RAW;

		for (int i = 0; i < argc; i++)
			FUNC51(argv[i], spa);
	}

	if (dump_opt['k']) {
		FUNC17(checkpoint_pool);
		if (!target_is_spa)
			FUNC17(checkpoint_target);
	}

	if (os != NULL)
		FUNC4(os, FTAG);
	else
		FUNC37(spa, FTAG);

	FUNC18();

	FUNC7();

	FUNC24(g_zfs);
	FUNC22();

	return (error);
}