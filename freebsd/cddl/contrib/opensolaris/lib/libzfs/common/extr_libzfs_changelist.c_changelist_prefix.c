
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cn_handle; void* cn_needpost; scalar_t__ cn_zoned; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_9__ {int cl_prop; int cl_gflags; int cl_mflags; int cl_list; } ;
typedef TYPE_2__ prop_changelist_t ;


 void* B_FALSE ;
 int CL_GATHER_DONT_UNMOUNT ;
 scalar_t__ GLOBAL_ZONEID ;
 int ZFS_IS_VOLUME (int ) ;


 int changelist_postfix (TYPE_2__*) ;
 scalar_t__ getzoneid () ;
 TYPE_1__* uu_list_first (int ) ;
 TYPE_1__* uu_list_next (int ,TYPE_1__*) ;
 int zfs_unmount (int ,int *,int ) ;
 int zfs_unshare_smb (int ,int *) ;

int
changelist_prefix(prop_changelist_t *clp)
{
 prop_changenode_t *cn;
 int ret = 0;

 if (clp->cl_prop != 129 &&
     clp->cl_prop != 128)
  return (0);

 for (cn = uu_list_first(clp->cl_list); cn != ((void*)0);
     cn = uu_list_next(clp->cl_list, cn)) {


  if (ret == -1) {
   cn->cn_needpost = B_FALSE;
   continue;
  }





  if (getzoneid() == GLOBAL_ZONEID && cn->cn_zoned)
   continue;

  if (!ZFS_IS_VOLUME(cn->cn_handle)) {



   switch (clp->cl_prop) {
   case 129:
    if (clp->cl_gflags & CL_GATHER_DONT_UNMOUNT)
     break;
    if (zfs_unmount(cn->cn_handle, ((void*)0),
        clp->cl_mflags) != 0) {
     ret = -1;
     cn->cn_needpost = B_FALSE;
    }
    break;
   case 128:
    (void) zfs_unshare_smb(cn->cn_handle, ((void*)0));
    break;

   default:
    break;
   }
  }
 }

 if (ret == -1)
  (void) changelist_postfix(clp);

 return (ret);
}
