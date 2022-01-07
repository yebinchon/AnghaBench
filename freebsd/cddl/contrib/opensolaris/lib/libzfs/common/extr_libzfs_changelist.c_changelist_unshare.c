
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_share_proto_t ;
struct TYPE_7__ {int cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_8__ {scalar_t__ cl_prop; int cl_list; } ;
typedef TYPE_2__ prop_changelist_t ;


 scalar_t__ ZFS_PROP_SHARENFS ;
 scalar_t__ ZFS_PROP_SHARESMB ;
 TYPE_1__* uu_list_first (int ) ;
 TYPE_1__* uu_list_next (int ,TYPE_1__*) ;
 scalar_t__ zfs_unshare_proto (int ,int *,int *) ;

int
changelist_unshare(prop_changelist_t *clp, zfs_share_proto_t *proto)
{
 prop_changenode_t *cn;
 int ret = 0;

 if (clp->cl_prop != ZFS_PROP_SHARENFS &&
     clp->cl_prop != ZFS_PROP_SHARESMB)
  return (0);

 for (cn = uu_list_first(clp->cl_list); cn != ((void*)0);
     cn = uu_list_next(clp->cl_list, cn)) {
  if (zfs_unshare_proto(cn->cn_handle, ((void*)0), proto) != 0)
   ret = -1;
 }

 return (ret);
}
