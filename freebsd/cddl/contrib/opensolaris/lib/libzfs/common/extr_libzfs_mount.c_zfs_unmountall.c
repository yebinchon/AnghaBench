
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int prop_changelist_t ;


 int ZFS_PROP_MOUNTPOINT ;
 int changelist_free (int *) ;
 int * changelist_gather (int *,int ,int ,int) ;
 int changelist_prefix (int *) ;

int
zfs_unmountall(zfs_handle_t *zhp, int flags)
{
 prop_changelist_t *clp;
 int ret;

 clp = changelist_gather(zhp, ZFS_PROP_MOUNTPOINT, 0, flags);
 if (clp == ((void*)0))
  return (-1);

 ret = changelist_prefix(clp);
 changelist_free(clp);

 return (ret);
}
