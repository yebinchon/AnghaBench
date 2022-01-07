
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int libzfs_prop_debug; int * libzfs_sharetab; int * libzfs_mnttab; int libzfs_fd; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int B_TRUE ;
 int MNTTAB ;
 int O_RDWR ;
 int ZFS_DEV ;
 int ZFS_EXPORTS_PATH ;
 TYPE_1__* calloc (int,int) ;
 int close (int ) ;
 int fclose (int *) ;
 void* fopen (int ,char*) ;
 int free (TYPE_1__*) ;
 int * getenv (char*) ;
 scalar_t__ libzfs_core_init () ;
 scalar_t__ libzfs_load () ;
 int libzfs_mnttab_init (TYPE_1__*) ;
 int open (int ,int ) ;
 int zfs_prop_init () ;
 int zpool_feature_init () ;
 int zpool_prop_init () ;

libzfs_handle_t *
libzfs_init(void)
{
 libzfs_handle_t *hdl;

 if ((hdl = calloc(1, sizeof (libzfs_handle_t))) == ((void*)0)) {
  return (((void*)0));
 }

 if (libzfs_load() < 0) {
  free(hdl);
  return (((void*)0));
 }

 if ((hdl->libzfs_fd = open(ZFS_DEV, O_RDWR)) < 0) {
  free(hdl);
  return (((void*)0));
 }

 if ((hdl->libzfs_mnttab = fopen(MNTTAB, "r")) == ((void*)0)) {
  (void) close(hdl->libzfs_fd);
  free(hdl);
  return (((void*)0));
 }

 hdl->libzfs_sharetab = fopen(ZFS_EXPORTS_PATH, "r");

 if (libzfs_core_init() != 0) {
  (void) close(hdl->libzfs_fd);
  (void) fclose(hdl->libzfs_mnttab);
  (void) fclose(hdl->libzfs_sharetab);
  free(hdl);
  return (((void*)0));
 }

 zfs_prop_init();
 zpool_prop_init();
 zpool_feature_init();
 libzfs_mnttab_init(hdl);

 if (getenv("ZFS_PROP_DEBUG") != ((void*)0)) {
  hdl->libzfs_prop_debug = B_TRUE;
 }

 return (hdl);
}
