
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef int mountpoint ;
struct TYPE_3__ {int mnt_idx; size_t mnt_num_handles; scalar_t__ (* mnt_func ) (int *,int ) ;int mnt_tp; int mnt_data; int mnt_hdl; int ** mnt_zhps; } ;
typedef TYPE_1__ mnt_param_t ;
typedef int child ;


 int B_FALSE ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int free (TYPE_1__*) ;
 int libzfs_path_contains (char*,char*) ;
 int non_descendant_idx (int **,size_t,int) ;
 scalar_t__ stub1 (int *,int ) ;
 int verify (int) ;
 int zfs_dispatch_mount (int ,int **,size_t,int,scalar_t__ (*) (int *,int ),int ,int ) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static void
zfs_mount_task(void *arg)
{
 mnt_param_t *mp = arg;
 int idx = mp->mnt_idx;
 zfs_handle_t **handles = mp->mnt_zhps;
 size_t num_handles = mp->mnt_num_handles;
 char mountpoint[ZFS_MAXPROPLEN];

 verify(zfs_prop_get(handles[idx], ZFS_PROP_MOUNTPOINT, mountpoint,
     sizeof (mountpoint), ((void*)0), ((void*)0), 0, B_FALSE) == 0);

 if (mp->mnt_func(handles[idx], mp->mnt_data) != 0)
  return;
 for (int i = idx + 1; i < num_handles;
     i = non_descendant_idx(handles, num_handles, i)) {
  char child[ZFS_MAXPROPLEN];
  verify(zfs_prop_get(handles[i], ZFS_PROP_MOUNTPOINT,
      child, sizeof (child), ((void*)0), ((void*)0), 0, B_FALSE) == 0);

  if (!libzfs_path_contains(mountpoint, child))
   break;
  zfs_dispatch_mount(mp->mnt_hdl, handles, num_handles, i,
      mp->mnt_func, mp->mnt_data, mp->mnt_tp);
 }
 free(mp);
}
