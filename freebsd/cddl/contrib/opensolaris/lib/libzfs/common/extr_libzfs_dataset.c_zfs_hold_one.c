
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct holdarg {char* snapname; scalar_t__ recursive; int tag; int nvl; } ;
typedef int name ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int fnvlist_add_string (int ,char*,int ) ;
 scalar_t__ lzc_exists (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_iter_filesystems (TYPE_1__*,int (*) (TYPE_1__*,void*),struct holdarg*) ;

__attribute__((used)) static int
zfs_hold_one(zfs_handle_t *zhp, void *arg)
{
 struct holdarg *ha = arg;
 char name[ZFS_MAX_DATASET_NAME_LEN];
 int rv = 0;

 (void) snprintf(name, sizeof (name),
     "%s@%s", zhp->zfs_name, ha->snapname);

 if (lzc_exists(name))
  fnvlist_add_string(ha->nvl, name, ha->tag);

 if (ha->recursive)
  rv = zfs_iter_filesystems(zhp, zfs_hold_one, ha);
 zfs_close(zhp);
 return (rv);
}
