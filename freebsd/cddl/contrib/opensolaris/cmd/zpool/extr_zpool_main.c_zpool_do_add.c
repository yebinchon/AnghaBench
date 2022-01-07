
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int zpool_boot_label_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_COPY_BOOT_LABEL ;
 int ZPOOL_NO_BOOT_LABEL ;
 int ZPOOL_PROP_BOOTSIZE ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int * make_root_vdev (int *,scalar_t__,int,scalar_t__,scalar_t__,int ,int ,int,char**) ;
 scalar_t__ num_logs (int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ optind ;
 int optopt ;
 int print_vdev_tree (int *,char*,int *,int ,scalar_t__) ;
 int printf (char*,char*) ;
 int stderr ;
 int usage (scalar_t__) ;
 int verify (int) ;
 scalar_t__ zpool_add (int *,int *) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;
 char* zpool_get_name (int *) ;
 int zpool_get_prop_int (int *,int ,int *) ;
 scalar_t__ zpool_is_bootable (int *) ;
 int * zpool_open (int ,char*) ;

int
zpool_do_add(int argc, char **argv)
{
 boolean_t force = B_FALSE;
 boolean_t dryrun = B_FALSE;
 int c;
 nvlist_t *nvroot;
 char *poolname;
 zpool_boot_label_t boot_type;
 uint64_t boot_size;
 int ret;
 zpool_handle_t *zhp;
 nvlist_t *config;


 while ((c = getopt(argc, argv, "fn")) != -1) {
  switch (c) {
  case 'f':
   force = B_TRUE;
   break;
  case 'n':
   dryrun = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name argument\n"));
  usage(B_FALSE);
 }
 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing vdev specification\n"));
  usage(B_FALSE);
 }

 poolname = argv[0];

 argc--;
 argv++;

 if ((zhp = zpool_open(g_zfs, poolname)) == ((void*)0))
  return (1);

 if ((config = zpool_get_config(zhp, ((void*)0))) == ((void*)0)) {
  (void) fprintf(stderr, gettext("pool '%s' is unavailable\n"),
      poolname);
  zpool_close(zhp);
  return (1);
 }

 if (zpool_is_bootable(zhp))
  boot_type = ZPOOL_COPY_BOOT_LABEL;
 else
  boot_type = ZPOOL_NO_BOOT_LABEL;


 boot_size = zpool_get_prop_int(zhp, ZPOOL_PROP_BOOTSIZE, ((void*)0));
 nvroot = make_root_vdev(zhp, force, !force, B_FALSE, dryrun,
     boot_type, boot_size, argc, argv);
 if (nvroot == ((void*)0)) {
  zpool_close(zhp);
  return (1);
 }

 if (dryrun) {
  nvlist_t *poolnvroot;

  verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &poolnvroot) == 0);

  (void) printf(gettext("would update '%s' to the following "
      "configuration:\n"), zpool_get_name(zhp));


  print_vdev_tree(zhp, poolname, poolnvroot, 0, B_FALSE);
  print_vdev_tree(zhp, ((void*)0), nvroot, 0, B_FALSE);


  if (num_logs(poolnvroot) > 0) {
   print_vdev_tree(zhp, "logs", poolnvroot, 0, B_TRUE);
   print_vdev_tree(zhp, ((void*)0), nvroot, 0, B_TRUE);
  } else if (num_logs(nvroot) > 0) {
   print_vdev_tree(zhp, "logs", nvroot, 0, B_TRUE);
  }

  ret = 0;
 } else {
  ret = (zpool_add(zhp, nvroot) != 0);
 }

 nvlist_free(nvroot);
 zpool_close(zhp);

 return (ret);
}
