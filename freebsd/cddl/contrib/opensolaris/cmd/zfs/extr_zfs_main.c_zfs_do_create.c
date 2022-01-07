
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef scalar_t__ zfs_type_t ;
typedef int zfs_prop_t ;
typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int NV_UNIQUE_NAME ;
 scalar_t__ SPA_VERSION_REFRESERVATION ;
 int ZFS_PROP_REFRESERVATION ;
 int ZFS_PROP_RESERVATION ;
 int ZFS_PROP_VOLBLOCKSIZE ;
 int ZFS_PROP_VOLSIZE ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 int ZPOOL_PROP_VERSION ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 char* libzfs_error_description (int ) ;
 int nomem () ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 char* optarg ;
 scalar_t__ optind ;
 int optopt ;
 int parseprop (int *,char*) ;
 scalar_t__ should_auto_mount (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int usage (scalar_t__) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_create (int ,char*,scalar_t__,int *) ;
 scalar_t__ zfs_create_ancestors (int ,char*) ;
 scalar_t__ zfs_dataset_exists (int ,char*,scalar_t__) ;
 scalar_t__ zfs_mount (int *,int *,int ) ;
 scalar_t__ zfs_name_valid (char*,scalar_t__) ;
 int zfs_nicestrtonum (int ,char*,scalar_t__*) ;
 int * zfs_open (int ,char*,int ) ;
 int zfs_prop_to_name (int ) ;
 scalar_t__ zfs_share (int *) ;
 char* zfs_type_to_name (scalar_t__) ;
 int * zfs_valid_proplist (int ,scalar_t__,int *,int ,int *,int *,char*) ;
 int zpool_close (int *) ;
 scalar_t__ zpool_get_prop_int (int *,int ,int *) ;
 int * zpool_open (int ,char*) ;
 scalar_t__ zvol_volsize_to_reservation (scalar_t__,int *) ;

__attribute__((used)) static int
zfs_do_create(int argc, char **argv)
{
 zfs_type_t type = ZFS_TYPE_FILESYSTEM;
 zfs_handle_t *zhp = ((void*)0);
 uint64_t volsize = 0;
 int c;
 boolean_t noreserve = B_FALSE;
 boolean_t bflag = B_FALSE;
 boolean_t parents = B_FALSE;
 boolean_t nomount = B_FALSE;
 int ret = 1;
 nvlist_t *props;
 uint64_t intval;

 if (nvlist_alloc(&props, NV_UNIQUE_NAME, 0) != 0)
  nomem();


 while ((c = getopt(argc, argv, ":V:b:so:pu")) != -1) {
  switch (c) {
  case 'V':
   type = ZFS_TYPE_VOLUME;
   if (zfs_nicestrtonum(g_zfs, optarg, &intval) != 0) {
    (void) fprintf(stderr, gettext("bad volume "
        "size '%s': %s\n"), optarg,
        libzfs_error_description(g_zfs));
    goto error;
   }

   if (nvlist_add_uint64(props,
       zfs_prop_to_name(ZFS_PROP_VOLSIZE), intval) != 0)
    nomem();
   volsize = intval;
   break;
  case 'p':
   parents = B_TRUE;
   break;
  case 'b':
   bflag = B_TRUE;
   if (zfs_nicestrtonum(g_zfs, optarg, &intval) != 0) {
    (void) fprintf(stderr, gettext("bad volume "
        "block size '%s': %s\n"), optarg,
        libzfs_error_description(g_zfs));
    goto error;
   }

   if (nvlist_add_uint64(props,
       zfs_prop_to_name(ZFS_PROP_VOLBLOCKSIZE),
       intval) != 0)
    nomem();
   break;
  case 'o':
   if (parseprop(props, optarg) != 0)
    goto error;
   break;
  case 's':
   noreserve = B_TRUE;
   break;
  case 'u':
   nomount = B_TRUE;
   break;
  case ':':
   (void) fprintf(stderr, gettext("missing size "
       "argument\n"));
   goto badusage;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   goto badusage;
  }
 }

 if ((bflag || noreserve) && type != ZFS_TYPE_VOLUME) {
  (void) fprintf(stderr, gettext("'-s' and '-b' can only be "
      "used when creating a volume\n"));
  goto badusage;
 }
 if (nomount && type != ZFS_TYPE_FILESYSTEM) {
  (void) fprintf(stderr, gettext("'-u' can only be "
      "used when creating a file system\n"));
  goto badusage;
 }

 argc -= optind;
 argv += optind;


 if (argc == 0) {
  (void) fprintf(stderr, gettext("missing %s argument\n"),
      zfs_type_to_name(type));
  goto badusage;
 }
 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  goto badusage;
 }

 if (type == ZFS_TYPE_VOLUME && !noreserve) {
  zpool_handle_t *zpool_handle;
  nvlist_t *real_props = ((void*)0);
  uint64_t spa_version;
  char *p;
  zfs_prop_t resv_prop;
  char *strval;
  char msg[1024];

  if ((p = strchr(argv[0], '/')) != ((void*)0))
   *p = '\0';
  zpool_handle = zpool_open(g_zfs, argv[0]);
  if (p != ((void*)0))
   *p = '/';
  if (zpool_handle == ((void*)0))
   goto error;
  spa_version = zpool_get_prop_int(zpool_handle,
      ZPOOL_PROP_VERSION, ((void*)0));
  if (spa_version >= SPA_VERSION_REFRESERVATION)
   resv_prop = ZFS_PROP_REFRESERVATION;
  else
   resv_prop = ZFS_PROP_RESERVATION;

  (void) snprintf(msg, sizeof (msg),
      gettext("cannot create '%s'"), argv[0]);
  if (props && (real_props = zfs_valid_proplist(g_zfs, type,
      props, 0, ((void*)0), zpool_handle, msg)) == ((void*)0)) {
   zpool_close(zpool_handle);
   goto error;
  }
  zpool_close(zpool_handle);

  volsize = zvol_volsize_to_reservation(volsize, real_props);
  nvlist_free(real_props);

  if (nvlist_lookup_string(props, zfs_prop_to_name(resv_prop),
      &strval) != 0) {
   if (nvlist_add_uint64(props,
       zfs_prop_to_name(resv_prop), volsize) != 0) {
    nvlist_free(props);
    nomem();
   }
  }
 }

 if (parents && zfs_name_valid(argv[0], type)) {





  if (zfs_dataset_exists(g_zfs, argv[0], type)) {
   ret = 0;
   goto error;
  }
  if (zfs_create_ancestors(g_zfs, argv[0]) != 0)
   goto error;
 }


 if (zfs_create(g_zfs, argv[0], type, props) != 0)
  goto error;

 if ((zhp = zfs_open(g_zfs, argv[0], ZFS_TYPE_DATASET)) == ((void*)0))
  goto error;

 ret = 0;
 if (!nomount && should_auto_mount(zhp)) {
  if (zfs_mount(zhp, ((void*)0), 0) != 0) {
   (void) fprintf(stderr, gettext("filesystem "
       "successfully created, but not mounted\n"));
   ret = 1;
  } else if (zfs_share(zhp) != 0) {
   (void) fprintf(stderr, gettext("filesystem "
       "successfully created, but not shared\n"));
   ret = 1;
  }
 }

error:
 if (zhp)
  zfs_close(zhp);
 nvlist_free(props);
 return (ret);
badusage:
 nvlist_free(props);
 usage(B_FALSE);
 return (2);
}
