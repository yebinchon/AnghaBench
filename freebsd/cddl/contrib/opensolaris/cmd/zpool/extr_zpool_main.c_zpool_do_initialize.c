
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
struct option {char* member_0; char member_3; int * member_2; int member_1; } ;
typedef int pool_initialize_func_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int POOL_INITIALIZE_CANCEL ;
 int POOL_INITIALIZE_DO ;
 int POOL_INITIALIZE_SUSPEND ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int fnvlist_add_boolean (int *,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 char* gettext (char*) ;
 int no_argument ;
 size_t optind ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zpool_close (int *) ;
 int zpool_collect_leaves (int *,int *,int *) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_initialize (int *,int ,int *) ;
 int * zpool_open (int ,char*) ;

int
zpool_do_initialize(int argc, char **argv)
{
 int c;
 char *poolname;
 zpool_handle_t *zhp;
 nvlist_t *vdevs;
 int err = 0;

 struct option long_options[] = {
  {"cancel", no_argument, ((void*)0), 'c'},
  {"suspend", no_argument, ((void*)0), 's'},
  {0, 0, 0, 0}
 };

 pool_initialize_func_t cmd_type = POOL_INITIALIZE_DO;
 while ((c = getopt_long(argc, argv, "cs", long_options, ((void*)0))) != -1) {
  switch (c) {
  case 'c':
   if (cmd_type != POOL_INITIALIZE_DO) {
    (void) fprintf(stderr, gettext("-c cannot be "
        "combined with other options\n"));
    usage(B_FALSE);
   }
   cmd_type = POOL_INITIALIZE_CANCEL;
   break;
  case 's':
   if (cmd_type != POOL_INITIALIZE_DO) {
    (void) fprintf(stderr, gettext("-s cannot be "
        "combined with other options\n"));
    usage(B_FALSE);
   }
   cmd_type = POOL_INITIALIZE_SUSPEND;
   break;
  case '?':
   if (optopt != 0) {
    (void) fprintf(stderr,
        gettext("invalid option '%c'\n"), optopt);
   } else {
    (void) fprintf(stderr,
        gettext("invalid option '%s'\n"),
        argv[optind - 1]);
   }
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name argument\n"));
  usage(B_FALSE);
  return (-1);
 }

 poolname = argv[0];
 zhp = zpool_open(g_zfs, poolname);
 if (zhp == ((void*)0))
  return (-1);

 vdevs = fnvlist_alloc();
 if (argc == 1) {

  nvlist_t *config = zpool_get_config(zhp, ((void*)0));
  nvlist_t *nvroot = fnvlist_lookup_nvlist(config,
      ZPOOL_CONFIG_VDEV_TREE);
  zpool_collect_leaves(zhp, nvroot, vdevs);
 } else {
  int i;
  for (i = 1; i < argc; i++) {
   fnvlist_add_boolean(vdevs, argv[i]);
  }
 }

 err = zpool_initialize(zhp, cmd_type, vdevs);

 fnvlist_free(vdevs);
 zpool_close(zhp);

 return (err);
}
