
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ zfs_type; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {scalar_t__ verbose; scalar_t__ force; } ;
typedef TYPE_2__ recvflags_t ;
typedef int prop_changelist_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MS_FORCE ;
 int SPA_VERSION_USERREFS ;
 int ZFS_PROP_NAME ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int changelist_free (int *) ;
 int * changelist_gather (TYPE_1__*,int ,int ,int ) ;
 int changelist_postfix (int *) ;
 int changelist_prefix (int *) ;
 int changelist_remove (int *,char const*) ;
 int fnvlist_add_boolean (int *,char const*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_destroy (char const*) ;
 int lzc_destroy_snaps (int *,scalar_t__,int *) ;
 int printf (char*,...) ;
 int recv_rename (int *,char const*,int *,int,char*,TYPE_2__*) ;
 int zfs_close (TYPE_1__*) ;
 scalar_t__ zfs_dataset_exists (int *,char const*,scalar_t__) ;
 scalar_t__ zfs_get_type (TYPE_1__*) ;
 TYPE_1__* zfs_open (int *,char const*,int ) ;
 scalar_t__ zfs_spa_version (TYPE_1__*,int*) ;

__attribute__((used)) static int
recv_destroy(libzfs_handle_t *hdl, const char *name, int baselen,
    char *newname, recvflags_t *flags)
{
 int err = 0;
 prop_changelist_t *clp;
 zfs_handle_t *zhp;
 boolean_t defer = B_FALSE;
 int spa_version;

 zhp = zfs_open(hdl, name, ZFS_TYPE_DATASET);
 if (zhp == ((void*)0))
  return (-1);
 clp = changelist_gather(zhp, ZFS_PROP_NAME, 0,
     flags->force ? MS_FORCE : 0);
 if (zfs_get_type(zhp) == ZFS_TYPE_SNAPSHOT &&
     zfs_spa_version(zhp, &spa_version) == 0 &&
     spa_version >= SPA_VERSION_USERREFS)
  defer = B_TRUE;
 zfs_close(zhp);
 if (clp == ((void*)0))
  return (-1);
 err = changelist_prefix(clp);
 if (err)
  return (err);

 if (flags->verbose)
  (void) printf("attempting destroy %s\n", name);
 if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT) {
  nvlist_t *nv = fnvlist_alloc();
  fnvlist_add_boolean(nv, name);
  err = lzc_destroy_snaps(nv, defer, ((void*)0));
  fnvlist_free(nv);
 } else {
  err = lzc_destroy(name);
 }
 if (err == 0) {
  if (flags->verbose)
   (void) printf("success\n");
  changelist_remove(clp, name);
 }

 (void) changelist_postfix(clp);
 changelist_free(clp);





 if (err != 0 || (defer && zfs_dataset_exists(hdl, name,
     ZFS_TYPE_SNAPSHOT))) {
  err = recv_rename(hdl, name, ((void*)0), baselen, newname, flags);
 }

 return (err);
}
