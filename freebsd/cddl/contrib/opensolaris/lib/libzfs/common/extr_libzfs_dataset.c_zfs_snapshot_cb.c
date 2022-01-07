
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {char* sd_snapname; int sd_nvl; } ;
typedef TYPE_1__ snapdata_t ;
typedef int name ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_INCONSISTENT ;
 int fnvlist_add_boolean (int ,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int zfs_close (int *) ;
 char* zfs_get_name (int *) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),TYPE_1__*) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
zfs_snapshot_cb(zfs_handle_t *zhp, void *arg)
{
 snapdata_t *sd = arg;
 char name[ZFS_MAX_DATASET_NAME_LEN];
 int rv = 0;

 if (zfs_prop_get_int(zhp, ZFS_PROP_INCONSISTENT) == 0) {
  (void) snprintf(name, sizeof (name),
      "%s@%s", zfs_get_name(zhp), sd->sd_snapname);

  fnvlist_add_boolean(sd->sd_nvl, name);

  rv = zfs_iter_filesystems(zhp, zfs_snapshot_cb, sd);
 }
 zfs_close(zhp);

 return (rv);
}
