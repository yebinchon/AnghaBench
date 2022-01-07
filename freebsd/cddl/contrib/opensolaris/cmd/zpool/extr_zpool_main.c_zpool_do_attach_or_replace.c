
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int zpool_boot_label_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZPOOL_COPY_BOOT_LABEL ;
 int ZPOOL_NO_BOOT_LABEL ;
 int ZPOOL_PROP_BOOTSIZE ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int * make_root_vdev (int *,int ,int ,int,int ,int ,int ,int,char**) ;
 int nvlist_free (int *) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_get_prop_int (int *,int ,int *) ;
 scalar_t__ zpool_is_bootable (int *) ;
 int * zpool_open (int ,char*) ;
 int zpool_vdev_attach (int *,char*,char*,int *,int) ;

__attribute__((used)) static int
zpool_do_attach_or_replace(int argc, char **argv, int replacing)
{
 boolean_t force = B_FALSE;
 int c;
 nvlist_t *nvroot;
 char *poolname, *old_disk, *new_disk;
 zpool_handle_t *zhp;
 zpool_boot_label_t boot_type;
 uint64_t boot_size;
 int ret;


 while ((c = getopt(argc, argv, "f")) != -1) {
  switch (c) {
  case 'f':
   force = B_TRUE;
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

 poolname = argv[0];

 if (argc < 2) {
  (void) fprintf(stderr,
      gettext("missing <device> specification\n"));
  usage(B_FALSE);
 }

 old_disk = argv[1];

 if (argc < 3) {
  if (!replacing) {
   (void) fprintf(stderr,
       gettext("missing <new_device> specification\n"));
   usage(B_FALSE);
  }
  new_disk = old_disk;
  argc -= 1;
  argv += 1;
 } else {
  new_disk = argv[2];
  argc -= 2;
  argv += 2;
 }

 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 if ((zhp = zpool_open(g_zfs, poolname)) == ((void*)0))
  return (1);

 if (zpool_get_config(zhp, ((void*)0)) == ((void*)0)) {
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
 nvroot = make_root_vdev(zhp, force, B_FALSE, replacing, B_FALSE,
     boot_type, boot_size, argc, argv);
 if (nvroot == ((void*)0)) {
  zpool_close(zhp);
  return (1);
 }

 ret = zpool_vdev_attach(zhp, old_disk, new_disk, nvroot, replacing);

 nvlist_free(nvroot);
 zpool_close(zhp);

 return (ret);
}
