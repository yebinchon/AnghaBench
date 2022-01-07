
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint64_t ;
struct rlimit {int member_0; int member_1; } ;
struct TYPE_8__ {scalar_t__ spa_log_state; int * spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int DMU_OST_ANY ;
 int ENOENT ;
 int ENOMEM ;
 int FREAD ;
 int FTAG ;
 int MAX (int,int) ;
 int NV_UNIQUE_NAME_TYPE ;
 int RLIMIT_NOFILE ;
 scalar_t__ SPA_LOG_CLEAR ;
 scalar_t__ SPA_LOG_MISSING ;
 void* TXG_INITIAL ;
 void* UINT64_MAX ;
 int UMEM_NOFAIL ;
 int ZDB_FLAG_BSWAP ;
 int ZDB_FLAG_CHECKSUM ;
 int ZDB_FLAG_DECOMPRESS ;
 int ZDB_FLAG_GBH ;
 int ZDB_FLAG_INDIRECT ;
 int ZDB_FLAG_PHYS ;
 int ZDB_FLAG_PRINT_BLKPTR ;
 int ZDB_FLAG_RAW ;
 int ZFS_IMPORT_MISSING_LOG ;
 int ZFS_IMPORT_VERBATIM ;
 int ZPOOL_DO_REWIND ;
 int ZPOOL_EXTREME_REWIND ;
 int ZPOOL_LOAD_POLICY ;
 int ZPOOL_LOAD_REQUEST_TXG ;
 int ZPOOL_LOAD_REWIND_POLICY ;
 int ZPOOL_NEVER_REWIND ;
 int aok ;
 int bcopy (char**,char**,int) ;
 scalar_t__* calloc (unsigned int,int) ;
 int close_objset (int *,int ) ;
 int dprintf_setup (int*,char**) ;
 int dump_cachefile (char*) ;
 int dump_debug_buffer () ;
 int dump_dir (int *) ;
 int dump_label (char*) ;
 int dump_nvlist (int *,int) ;
 int* dump_opt ;
 int dump_path (char*,char*) ;
 int dump_zpool (TYPE_1__*) ;
 int enable_extended_FILE_stdio (int,int) ;
 int errno ;
 int fatal (char*,...) ;
 char* find_zpool (char**,int **,int,char**) ;
 int * flagbits ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int fuid_table_destroy () ;
 int * g_zfs ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 char* import_checkpointed_state (char*,int *,char**) ;
 int kernel_fini () ;
 int kernel_init (int ) ;
 int libzfs_fini (int *) ;
 int * libzfs_init () ;
 void* max_inflight ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_uint32 (int *,int ,int) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,void*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int open_objset (char*,int ,int ,int **) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*) ;
 void* reference_tracking_enable ;
 int set_global_var (char*) ;
 int setrlimit (int ,struct rlimit*) ;
 int spa_close (TYPE_1__*,int ) ;
 char* spa_config_path ;
 int spa_import (char*,int *,int *,int) ;
 void* spa_load_verify_dryrun ;
 TYPE_1__* spa_lookup (char*) ;
 int spa_namespace_lock ;
 int spa_open (char*,TYPE_1__**,int ) ;
 int spa_open_rewind (char*,TYPE_1__**,int ,int *,int *) ;
 int stderr ;
 int * strchr (char*,int) ;
 int strerror (int) ;
 size_t strlen (char*) ;
 int * strpbrk (char*,char*) ;
 void* strtoull (char*,int *,int ) ;
 char** umem_alloc (int,int ) ;
 int umem_free (char**,int) ;
 int usage () ;
 char* vn_dumpdir ;
 int zdb_embedded_block (char*) ;
 int zdb_read_block (char*,TYPE_1__*) ;
 int zfs_arc_max ;
 int zfs_arc_meta_limit ;
 int zfs_recover ;
 int zfs_vdev_async_read_max_active ;
 scalar_t__* zopt_object ;
 unsigned int zopt_objects ;

int
main(int argc, char **argv)
{
 int c;
 struct rlimit rl = { 1024, 1024 };
 spa_t *spa = ((void*)0);
 objset_t *os = ((void*)0);
 int dump_all = 1;
 int verbose = 0;
 int error = 0;
 char **searchdirs = ((void*)0);
 int nsearch = 0;
 char *target;
 nvlist_t *policy = ((void*)0);
 uint64_t max_txg = UINT64_MAX;
 int flags = ZFS_IMPORT_MISSING_LOG;
 int rewind = ZPOOL_NEVER_REWIND;
 char *spa_config_path_env;
 boolean_t target_is_spa = B_TRUE;
 nvlist_t *cfg = ((void*)0);

 (void) setrlimit(RLIMIT_NOFILE, &rl);
 (void) enable_extended_FILE_stdio(-1, -1);

 dprintf_setup(&argc, argv);






 spa_config_path_env = getenv("SPA_CONFIG_PATH");
 if (spa_config_path_env != ((void*)0))
  spa_config_path = spa_config_path_env;

 while ((c = getopt(argc, argv,
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

  case 'I':
   max_inflight = strtoull(optarg, ((void*)0), 0);
   if (max_inflight == 0) {
    (void) fprintf(stderr, "maximum number "
        "of inflight I/Os must be greater "
        "than 0\n");
    usage();
   }
   break;
  case 'o':
   error = set_global_var(optarg);
   if (error != 0)
    usage();
   break;
  case 'p':
   if (searchdirs == ((void*)0)) {
    searchdirs = umem_alloc(sizeof (char *),
        UMEM_NOFAIL);
   } else {
    char **tmp = umem_alloc((nsearch + 1) *
        sizeof (char *), UMEM_NOFAIL);
    bcopy(searchdirs, tmp, nsearch *
        sizeof (char *));
    umem_free(searchdirs,
        nsearch * sizeof (char *));
    searchdirs = tmp;
   }
   searchdirs[nsearch++] = optarg;
   break;
  case 't':
   max_txg = strtoull(optarg, ((void*)0), 0);
   if (max_txg < TXG_INITIAL) {
    (void) fprintf(stderr, "incorrect txg "
        "specified: %s\n", optarg);
    usage();
   }
   break;
  case 'U':
   spa_config_path = optarg;
   if (spa_config_path[0] != '/') {
    (void) fprintf(stderr,
        "cachefile must be an absolute path "
        "(i.e. start with a slash)\n");
    usage();
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
   usage();
   break;
  }
 }

 if (!dump_opt['e'] && searchdirs != ((void*)0)) {
  (void) fprintf(stderr, "-p option requires use of -e\n");
  usage();
 }





 zfs_arc_max = zfs_arc_meta_limit = 256 * 1024 * 1024;






 zfs_vdev_async_read_max_active = 10;




 reference_tracking_enable = B_FALSE;





 spa_load_verify_dryrun = B_TRUE;

 kernel_init(FREAD);
 g_zfs = libzfs_init();
 if (g_zfs == ((void*)0))
  fatal("Fail to initialize zfs");

 if (dump_all)
  verbose = MAX(verbose, 1);

 for (c = 0; c < 256; c++) {
  if (dump_all && strchr("AeEFklLOPRSX", c) == ((void*)0))
   dump_opt[c] = 1;
  if (dump_opt[c])
   dump_opt[c] += verbose;
 }

 aok = (dump_opt['A'] == 1) || (dump_opt['A'] > 2);
 zfs_recover = (dump_opt['A'] > 1);

 argc -= optind;
 argv += optind;

 if (argc < 2 && dump_opt['R'])
  usage();

 if (dump_opt['E']) {
  if (argc != 1)
   usage();
  zdb_embedded_block(argv[0]);
  return (0);
 }

 if (argc < 1) {
  if (!dump_opt['e'] && dump_opt['C']) {
   dump_cachefile(spa_config_path);
   return (0);
  }
  usage();
 }

 if (dump_opt['l'])
  return (dump_label(argv[0]));

 if (dump_opt['O']) {
  if (argc != 2)
   usage();
  dump_opt['v'] = verbose + 3;
  return (dump_path(argv[0], argv[1]));
 }

 if (dump_opt['X'] || dump_opt['F'])
  rewind = ZPOOL_DO_REWIND |
      (dump_opt['X'] ? ZPOOL_EXTREME_REWIND : 0);

 if (nvlist_alloc(&policy, NV_UNIQUE_NAME_TYPE, 0) != 0 ||
     nvlist_add_uint64(policy, ZPOOL_LOAD_REQUEST_TXG, max_txg) != 0 ||
     nvlist_add_uint32(policy, ZPOOL_LOAD_REWIND_POLICY, rewind) != 0)
  fatal("internal error: %s", strerror(ENOMEM));

 error = 0;
 target = argv[0];

 if (dump_opt['e']) {
  char *name = find_zpool(&target, &cfg, nsearch, searchdirs);

  error = ENOENT;
  if (name) {
   if (dump_opt['C'] > 1) {
    (void) printf("\nConfiguration for import:\n");
    dump_nvlist(cfg, 8);
   }

   if (nvlist_add_nvlist(cfg,
       ZPOOL_LOAD_POLICY, policy) != 0) {
    fatal("can't open '%s': %s",
        target, strerror(ENOMEM));
   }
   error = spa_import(name, cfg, ((void*)0), flags);
  }
 }

 char *checkpoint_pool = ((void*)0);
 char *checkpoint_target = ((void*)0);
 if (dump_opt['k']) {
  checkpoint_pool = import_checkpointed_state(target, cfg,
      &checkpoint_target);

  if (checkpoint_target != ((void*)0))
   target = checkpoint_target;

 }

 if (strpbrk(target, "/@") != ((void*)0)) {
  size_t targetlen;

  target_is_spa = B_FALSE;






  targetlen = strlen(target);
  if (targetlen != 0 && target[targetlen - 1] == '/')
   target[targetlen - 1] = '\0';
 }

 if (error == 0) {
  if (dump_opt['k'] && (target_is_spa || dump_opt['R'])) {
   ASSERT(checkpoint_pool != ((void*)0));
   ASSERT(checkpoint_target == ((void*)0));

   error = spa_open(checkpoint_pool, &spa, FTAG);
   if (error != 0) {
    fatal("Tried to open pool \"%s\" but "
        "spa_open() failed with error %d\n",
        checkpoint_pool, error);
   }

  } else if (target_is_spa || dump_opt['R']) {
   error = spa_open_rewind(target, &spa, FTAG, policy,
       ((void*)0));
   if (error) {





    mutex_enter(&spa_namespace_lock);
    if ((spa = spa_lookup(target)) != ((void*)0) &&
        spa->spa_log_state == SPA_LOG_MISSING) {
     spa->spa_log_state = SPA_LOG_CLEAR;
     error = 0;
    }
    mutex_exit(&spa_namespace_lock);

    if (!error) {
     error = spa_open_rewind(target, &spa,
         FTAG, policy, ((void*)0));
    }
   }
  } else {
   error = open_objset(target, DMU_OST_ANY, FTAG, &os);
  }
 }
 nvlist_free(policy);

 if (error)
  fatal("can't open '%s': %s", target, strerror(error));

 argv++;
 argc--;
 if (!dump_opt['R']) {
  if (argc > 0) {
   zopt_objects = argc;
   zopt_object = calloc(zopt_objects, sizeof (uint64_t));
   for (unsigned i = 0; i < zopt_objects; i++) {
    errno = 0;
    zopt_object[i] = strtoull(argv[i], ((void*)0), 0);
    if (zopt_object[i] == 0 && errno != 0)
     fatal("bad number %s: %s",
         argv[i], strerror(errno));
   }
  }
  if (os != ((void*)0)) {
   dump_dir(os);
  } else if (zopt_objects > 0 && !dump_opt['m']) {
   dump_dir(spa->spa_meta_objset);
  } else {
   dump_zpool(spa);
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
   zdb_read_block(argv[i], spa);
 }

 if (dump_opt['k']) {
  free(checkpoint_pool);
  if (!target_is_spa)
   free(checkpoint_target);
 }

 if (os != ((void*)0))
  close_objset(os, FTAG);
 else
  spa_close(spa, FTAG);

 fuid_table_destroy();

 dump_debug_buffer();

 libzfs_fini(g_zfs);
 kernel_fini();

 return (error);
}
