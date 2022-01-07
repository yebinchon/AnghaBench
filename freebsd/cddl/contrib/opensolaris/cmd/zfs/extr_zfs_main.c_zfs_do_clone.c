
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int NV_UNIQUE_NAME ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZFS_TYPE_VOLUME ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int nomem () ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int optarg ;
 scalar_t__ optind ;
 int optopt ;
 int parseprop (int *,int ) ;
 scalar_t__ should_auto_mount (int *) ;
 int stderr ;
 int usage (scalar_t__) ;
 int zfs_clone (int *,char*,int *) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_create_ancestors (int ,char*) ;
 scalar_t__ zfs_dataset_exists (int ,char*,int) ;
 int zfs_mount (int *,int *,int ) ;
 scalar_t__ zfs_name_valid (char*,int) ;
 int * zfs_open (int ,char*,int ) ;
 int zfs_share (int *) ;

__attribute__((used)) static int
zfs_do_clone(int argc, char **argv)
{
 zfs_handle_t *zhp = ((void*)0);
 boolean_t parents = B_FALSE;
 nvlist_t *props;
 int ret = 0;
 int c;

 if (nvlist_alloc(&props, NV_UNIQUE_NAME, 0) != 0)
  nomem();


 while ((c = getopt(argc, argv, "o:p")) != -1) {
  switch (c) {
  case 'o':
   if (parseprop(props, optarg) != 0)
    return (1);
   break;
  case 'p':
   parents = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   goto usage;
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing source dataset "
      "argument\n"));
  goto usage;
 }
 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing target dataset "
      "argument\n"));
  goto usage;
 }
 if (argc > 2) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  goto usage;
 }


 if ((zhp = zfs_open(g_zfs, argv[0], ZFS_TYPE_SNAPSHOT)) == ((void*)0))
  return (1);

 if (parents && zfs_name_valid(argv[1], ZFS_TYPE_FILESYSTEM |
     ZFS_TYPE_VOLUME)) {





  if (zfs_dataset_exists(g_zfs, argv[1], ZFS_TYPE_FILESYSTEM |
      ZFS_TYPE_VOLUME))
   return (0);
  if (zfs_create_ancestors(g_zfs, argv[1]) != 0)
   return (1);
 }


 ret = zfs_clone(zhp, argv[1], props);


 if (ret == 0) {
  zfs_handle_t *clone;

  clone = zfs_open(g_zfs, argv[1], ZFS_TYPE_DATASET);
  if (clone != ((void*)0)) {





   if (should_auto_mount(clone)) {
    if ((ret = zfs_mount(clone, ((void*)0), 0)) != 0) {
     (void) fprintf(stderr, gettext("clone "
         "successfully created, "
         "but not mounted\n"));
    } else if ((ret = zfs_share(clone)) != 0) {
     (void) fprintf(stderr, gettext("clone "
         "successfully created, "
         "but not shared\n"));
    }
   }
   zfs_close(clone);
  }
 }

 zfs_close(zhp);
 nvlist_free(props);

 return (!!ret);

usage:
 if (zhp)
  zfs_close(zhp);
 nvlist_free(props);
 usage(B_FALSE);
 return (-1);
}
