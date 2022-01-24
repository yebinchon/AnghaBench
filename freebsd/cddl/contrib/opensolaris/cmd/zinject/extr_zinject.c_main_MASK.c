#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int zi_freq; int zi_duration; scalar_t__ zi_cmd; int zi_iotype; int zi_error; void* zi_type; int /*<<< orphan*/  zi_func; int /*<<< orphan*/  zi_failfast; int /*<<< orphan*/  zi_nlanes; int /*<<< orphan*/  zi_timer; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zinject_record_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ err_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int ECHILD ; 
 int ECKSUM ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int MAXNAMELEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ TYPE_INVAL ; 
 int VDEV_STATE_DEGRADED ; 
 int VDEV_STATE_FAULTED ; 
 int VDEV_STATE_UNKNOWN ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 void* ZINJECT_DATA_FAULT ; 
 int ZINJECT_FLUSH_ARC ; 
 scalar_t__ ZINJECT_IGNORED_WRITES ; 
 int ZINJECT_NULL ; 
 scalar_t__ ZINJECT_PANIC ; 
 scalar_t__ ZINJECT_UNINITIALIZED ; 
 int ZINJECT_UNLOAD_SPA ; 
 int ZIO_TYPES ; 
 int ZIO_TYPE_CLAIM ; 
 int ZIO_TYPE_FREE ; 
 int ZIO_TYPE_READ ; 
 int ZIO_TYPE_WRITE ; 
 void* FUNC2 (char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * g_zfs ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,TYPE_1__*,int) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC21 (char*,char**,int) ; 
 scalar_t__ FUNC22 (char*,char*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC23 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC24 (scalar_t__,char*,char*,int,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  zfs_fd ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC29(int argc, char **argv)
{
	int c;
	char *range = NULL;
	char *cancel = NULL;
	char *end;
	char *raw = NULL;
	char *device = NULL;
	int level = 0;
	int quiet = 0;
	int error = 0;
	int domount = 0;
	int io_type = ZIO_TYPES;
	int action = VDEV_STATE_UNKNOWN;
	err_type_t type = TYPE_INVAL;
	err_type_t label = TYPE_INVAL;
	zinject_record_t record = { 0 };
	char pool[MAXNAMELEN];
	char dataset[MAXNAMELEN];
	zfs_handle_t *zhp;
	int nowrites = 0;
	int dur_txg = 0;
	int dur_secs = 0;
	int ret;
	int flags = 0;

	if ((g_zfs = FUNC8()) == NULL) {
		(void) FUNC5(stderr, "internal error: failed to "
		    "initialize ZFS library\n");
		return (1);
	}

	FUNC9(g_zfs, B_TRUE);

	if ((zfs_fd = FUNC11(ZFS_DEV, O_RDWR)) < 0) {
		(void) FUNC5(stderr, "failed to open ZFS device\n");
		return (1);
	}

	if (argc == 1) {
		/*
		 * No arguments.  Print the available handlers.  If there are no
		 * available handlers, direct the user to '-h' for help
		 * information.
		 */
		if (FUNC14() == 0) {
			(void) FUNC15("No handlers registered.\n");
			(void) FUNC15("Run 'zinject -h' for usage "
			    "information.\n");
		}

		return (0);
	}

	while ((c = FUNC6(argc, argv,
	    ":aA:b:d:D:f:Fg:qhIc:t:T:l:mr:s:e:uL:p:")) != -1) {
		switch (c) {
		case 'a':
			flags |= ZINJECT_FLUSH_ARC;
			break;
		case 'A':
			if (FUNC17(optarg, "degrade") == 0) {
				action = VDEV_STATE_DEGRADED;
			} else if (FUNC17(optarg, "fault") == 0) {
				action = VDEV_STATE_FAULTED;
			} else {
				(void) FUNC5(stderr, "invalid action '%s': "
				    "must be 'degrade' or 'fault'\n", optarg);
				FUNC25();
				return (1);
			}
			break;
		case 'b':
			raw = optarg;
			break;
		case 'c':
			cancel = optarg;
			break;
		case 'd':
			device = optarg;
			break;
		case 'D':
			ret = FUNC12(optarg, &record.zi_timer,
			    &record.zi_nlanes);
			if (ret != 0) {
				(void) FUNC5(stderr, "invalid i/o delay "
				    "value: '%s'\n", optarg);
				FUNC25();
				return (1);
			}
			break;
		case 'e':
			if (FUNC17(optarg, "io") == 0) {
				error = EIO;
			} else if (FUNC17(optarg, "checksum") == 0) {
				error = ECKSUM;
			} else if (FUNC17(optarg, "nxio") == 0) {
				error = ENXIO;
			} else if (FUNC17(optarg, "dtl") == 0) {
				error = ECHILD;
			} else {
				(void) FUNC5(stderr, "invalid error type "
				    "'%s': must be 'io', 'checksum' or "
				    "'nxio'\n", optarg);
				FUNC25();
				return (1);
			}
			break;
		case 'f':
			record.zi_freq = FUNC2(optarg);
			if (record.zi_freq < 1 || record.zi_freq > 100) {
				(void) FUNC5(stderr, "frequency range must "
				    "be in the range (0, 100]\n");
				return (1);
			}
			break;
		case 'F':
			record.zi_failfast = B_TRUE;
			break;
		case 'g':
			dur_txg = 1;
			record.zi_duration = (int)FUNC21(optarg, &end, 10);
			if (record.zi_duration <= 0 || *end != '\0') {
				(void) FUNC5(stderr, "invalid duration '%s': "
				    "must be a positive integer\n", optarg);
				FUNC25();
				return (1);
			}
			/* store duration of txgs as its negative */
			record.zi_duration *= -1;
			break;
		case 'h':
			FUNC25();
			return (0);
		case 'I':
			/* default duration, if one hasn't yet been defined */
			nowrites = 1;
			if (dur_secs == 0 && dur_txg == 0)
				record.zi_duration = 30;
			break;
		case 'l':
			level = (int)FUNC21(optarg, &end, 10);
			if (*end != '\0') {
				(void) FUNC5(stderr, "invalid level '%s': "
				    "must be an integer\n", optarg);
				FUNC25();
				return (1);
			}
			break;
		case 'm':
			domount = 1;
			break;
		case 'p':
			(void) FUNC20(record.zi_func, optarg,
			    sizeof (record.zi_func));
			record.zi_cmd = ZINJECT_PANIC;
			break;
		case 'q':
			quiet = 1;
			break;
		case 'r':
			range = optarg;
			break;
		case 's':
			dur_secs = 1;
			record.zi_duration = (int)FUNC21(optarg, &end, 10);
			if (record.zi_duration <= 0 || *end != '\0') {
				(void) FUNC5(stderr, "invalid duration '%s': "
				    "must be a positive integer\n", optarg);
				FUNC25();
				return (1);
			}
			break;
		case 'T':
			if (FUNC17(optarg, "read") == 0) {
				io_type = ZIO_TYPE_READ;
			} else if (FUNC17(optarg, "write") == 0) {
				io_type = ZIO_TYPE_WRITE;
			} else if (FUNC17(optarg, "free") == 0) {
				io_type = ZIO_TYPE_FREE;
			} else if (FUNC17(optarg, "claim") == 0) {
				io_type = ZIO_TYPE_CLAIM;
			} else if (FUNC17(optarg, "all") == 0) {
				io_type = ZIO_TYPES;
			} else {
				(void) FUNC5(stderr, "invalid I/O type "
				    "'%s': must be 'read', 'write', 'free', "
				    "'claim' or 'all'\n", optarg);
				FUNC25();
				return (1);
			}
			break;
		case 't':
			if ((type = FUNC10(optarg)) == TYPE_INVAL &&
			    !FUNC1(type)) {
				(void) FUNC5(stderr, "invalid type '%s'\n",
				    optarg);
				FUNC25();
				return (1);
			}
			break;
		case 'u':
			flags |= ZINJECT_UNLOAD_SPA;
			break;
		case 'L':
			if ((label = FUNC10(optarg)) == TYPE_INVAL &&
			    !FUNC0(type)) {
				(void) FUNC5(stderr, "invalid label type "
				    "'%s'\n", optarg);
				FUNC25();
				return (1);
			}
			break;
		case ':':
			(void) FUNC5(stderr, "option -%c requires an "
			    "operand\n", optopt);
			FUNC25();
			return (1);
		case '?':
			(void) FUNC5(stderr, "invalid option '%c'\n",
			    optopt);
			FUNC25();
			return (2);
		}
	}

	argc -= optind;
	argv += optind;

	if (record.zi_duration != 0)
		record.zi_cmd = ZINJECT_IGNORED_WRITES;

	if (cancel != NULL) {
		/*
		 * '-c' is invalid with any other options.
		 */
		if (raw != NULL || range != NULL || type != TYPE_INVAL ||
		    level != 0 || record.zi_cmd != ZINJECT_UNINITIALIZED) {
			(void) FUNC5(stderr, "cancel (-c) incompatible with "
			    "any other options\n");
			FUNC25();
			return (2);
		}
		if (argc != 0) {
			(void) FUNC5(stderr, "extraneous argument to '-c'\n");
			FUNC25();
			return (2);
		}

		if (FUNC18(cancel, "all") == 0) {
			return (FUNC3());
		} else {
			int id = (int)FUNC21(cancel, &end, 10);
			if (*end != '\0') {
				(void) FUNC5(stderr, "invalid handle id '%s':"
				    " must be an integer or 'all'\n", cancel);
				FUNC25();
				return (1);
			}
			return (FUNC4(id));
		}
	}

	if (device != NULL) {
		/*
		 * Device (-d) injection uses a completely different mechanism
		 * for doing injection, so handle it separately here.
		 */
		if (raw != NULL || range != NULL || type != TYPE_INVAL ||
		    level != 0 || record.zi_cmd != ZINJECT_UNINITIALIZED) {
			(void) FUNC5(stderr, "device (-d) incompatible with "
			    "data error injection\n");
			FUNC25();
			return (2);
		}

		if (argc != 1) {
			(void) FUNC5(stderr, "device (-d) injection requires "
			    "a single pool name\n");
			FUNC25();
			return (2);
		}

		(void) FUNC19(pool, argv[0]);
		dataset[0] = '\0';

		if (error == ECKSUM) {
			(void) FUNC5(stderr, "device error type must be "
			    "'io' or 'nxio'\n");
			return (1);
		}

		record.zi_iotype = io_type;
		if (FUNC22(pool, device, label, &record) != 0)
			return (1);
		if (!error)
			error = ENXIO;

		if (action != VDEV_STATE_UNKNOWN)
			return (FUNC13(pool, &record, action));

	} else if (raw != NULL) {
		if (range != NULL || type != TYPE_INVAL || level != 0 ||
		    record.zi_cmd != ZINJECT_UNINITIALIZED) {
			(void) FUNC5(stderr, "raw (-b) format with "
			    "any other options\n");
			FUNC25();
			return (2);
		}

		if (argc != 1) {
			(void) FUNC5(stderr, "raw (-b) format expects a "
			    "single pool name\n");
			FUNC25();
			return (2);
		}

		(void) FUNC19(pool, argv[0]);
		dataset[0] = '\0';

		if (error == ENXIO) {
			(void) FUNC5(stderr, "data error type must be "
			    "'checksum' or 'io'\n");
			return (1);
		}

		record.zi_cmd = ZINJECT_DATA_FAULT;
		if (FUNC23(raw, &record) != 0)
			return (1);
		if (!error)
			error = EIO;
	} else if (record.zi_cmd == ZINJECT_PANIC) {
		if (raw != NULL || range != NULL || type != TYPE_INVAL ||
		    level != 0 || device != NULL) {
			(void) FUNC5(stderr, "panic (-p) incompatible with "
			    "other options\n");
			FUNC25();
			return (2);
		}

		if (argc < 1 || argc > 2) {
			(void) FUNC5(stderr, "panic (-p) injection requires "
			    "a single pool name and an optional id\n");
			FUNC25();
			return (2);
		}

		(void) FUNC19(pool, argv[0]);
		if (argv[1] != NULL)
			record.zi_type = FUNC2(argv[1]);
		dataset[0] = '\0';
	} else if (record.zi_cmd == ZINJECT_IGNORED_WRITES) {
		if (nowrites == 0) {
			(void) FUNC5(stderr, "-s or -g meaningless "
			    "without -I (ignore writes)\n");
			FUNC25();
			return (2);
		} else if (dur_secs && dur_txg) {
			(void) FUNC5(stderr, "choose a duration either "
			    "in seconds (-s) or a number of txgs (-g) "
			    "but not both\n");
			FUNC25();
			return (2);
		} else if (argc != 1) {
			(void) FUNC5(stderr, "ignore writes (-I) "
			    "injection requires a single pool name\n");
			FUNC25();
			return (2);
		}

		(void) FUNC19(pool, argv[0]);
		dataset[0] = '\0';
	} else if (type == TYPE_INVAL) {
		if (flags == 0) {
			(void) FUNC5(stderr, "at least one of '-b', '-d', "
			    "'-t', '-a', '-p', '-I' or '-u' "
			    "must be specified\n");
			FUNC25();
			return (2);
		}

		if (argc == 1 && (flags & ZINJECT_UNLOAD_SPA)) {
			(void) FUNC19(pool, argv[0]);
			dataset[0] = '\0';
		} else if (argc != 0) {
			(void) FUNC5(stderr, "extraneous argument for "
			    "'-f'\n");
			FUNC25();
			return (2);
		}

		flags |= ZINJECT_NULL;
	} else {
		if (argc != 1) {
			(void) FUNC5(stderr, "missing object\n");
			FUNC25();
			return (2);
		}

		if (error == ENXIO) {
			(void) FUNC5(stderr, "data error type must be "
			    "'checksum' or 'io'\n");
			return (1);
		}

		record.zi_cmd = ZINJECT_DATA_FAULT;
		if (FUNC24(type, argv[0], range, level, &record, pool,
		    dataset) != 0)
			return (1);
		if (!error)
			error = EIO;
	}

	/*
	 * If this is pool-wide metadata, unmount everything.  The ioctl() will
	 * unload the pool, so that we trigger spa-wide reopen of metadata next
	 * time we access the pool.
	 */
	if (dataset[0] != '\0' && domount) {
		if ((zhp = FUNC27(g_zfs, dataset, ZFS_TYPE_DATASET)) == NULL)
			return (1);

		if (FUNC28(zhp, NULL, 0) != 0)
			return (1);
	}

	record.zi_error = error;

	ret = FUNC16(pool, flags, &record, quiet);

	if (dataset[0] != '\0' && domount)
		ret = (FUNC26(zhp, NULL, 0) != 0);

	FUNC7(g_zfs);

	return (ret);
}