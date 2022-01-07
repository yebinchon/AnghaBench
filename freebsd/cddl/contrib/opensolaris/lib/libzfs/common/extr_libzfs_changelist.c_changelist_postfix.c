
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int shareopts ;
struct TYPE_24__ {size_t zhandle_len; TYPE_1__** zhandle_arr; } ;
typedef TYPE_2__ sa_init_selective_arg_t ;
struct TYPE_25__ {TYPE_1__* cn_handle; scalar_t__ cn_shared; scalar_t__ cn_mounted; scalar_t__ cn_needpost; scalar_t__ cn_zoned; } ;
typedef TYPE_3__ prop_changenode_t ;
struct TYPE_26__ {scalar_t__ cl_prop; int cl_gflags; scalar_t__ cl_waslegacy; int cl_list; } ;
typedef TYPE_4__ prop_changelist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 scalar_t__ B_FALSE ;
 int CL_GATHER_DONT_UNMOUNT ;
 scalar_t__ GLOBAL_ZONEID ;
 int SA_INIT_SHARE_API_SELECTIVE ;
 int TRUE ;
 scalar_t__ ZFS_CANMOUNT_ON ;
 scalar_t__ ZFS_IS_VOLUME (TYPE_1__*) ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_CANMOUNT ;
 scalar_t__ ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_SHARENFS ;
 int ZFS_PROP_SHARESMB ;
 int assert (int) ;
 int free (TYPE_1__**) ;
 scalar_t__ getzoneid () ;
 int remove_mountpoint (TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_3__* uu_list_last (int ) ;
 TYPE_3__* uu_list_prev (int ,TYPE_3__*) ;
 TYPE_1__** zfs_alloc (int *,size_t) ;
 int zfs_init_libshare_arg (int *,int ,TYPE_2__*) ;
 scalar_t__ zfs_is_mounted (TYPE_1__*,int *) ;
 scalar_t__ zfs_mount (TYPE_1__*,int *,int ) ;
 scalar_t__ zfs_prop_get (TYPE_1__*,int ,char*,int,int *,int *,int ,scalar_t__) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_refresh_properties (TYPE_1__*) ;
 scalar_t__ zfs_share_nfs (TYPE_1__*) ;
 scalar_t__ zfs_share_smb (TYPE_1__*) ;
 int zfs_uninit_libshare (int *) ;
 scalar_t__ zfs_unshare_nfs (TYPE_1__*,int *) ;
 scalar_t__ zfs_unshare_smb (TYPE_1__*,int *) ;

int
changelist_postfix(prop_changelist_t *clp)
{
 prop_changenode_t *cn;
 char shareopts[ZFS_MAXPROPLEN];
 int errors = 0;
 libzfs_handle_t *hdl;
 if ((cn = uu_list_last(clp->cl_list)) == ((void*)0))
  return (0);

 if (clp->cl_prop == ZFS_PROP_MOUNTPOINT &&
     !(clp->cl_gflags & CL_GATHER_DONT_UNMOUNT)) {
  remove_mountpoint(cn->cn_handle);
 }







 if (cn->cn_handle != ((void*)0)) {
  hdl = cn->cn_handle->zfs_hdl;
  assert(hdl != ((void*)0));
  zfs_uninit_libshare(hdl);
 }





 for (cn = uu_list_last(clp->cl_list); cn != ((void*)0);
     cn = uu_list_prev(clp->cl_list, cn)) {

  boolean_t sharenfs;
  boolean_t sharesmb;
  boolean_t mounted;





  if (getzoneid() == GLOBAL_ZONEID && cn->cn_zoned)
   continue;


  if (!cn->cn_needpost)
   continue;
  cn->cn_needpost = B_FALSE;


  zfs_refresh_properties(cn->cn_handle);


  if (ZFS_IS_VOLUME(cn->cn_handle))
   continue;





  sharenfs = ((zfs_prop_get(cn->cn_handle, ZFS_PROP_SHARENFS,
      shareopts, sizeof (shareopts), ((void*)0), ((void*)0), 0,
      B_FALSE) == 0) && (strcmp(shareopts, "off") != 0));

  sharesmb = ((zfs_prop_get(cn->cn_handle, ZFS_PROP_SHARESMB,
      shareopts, sizeof (shareopts), ((void*)0), ((void*)0), 0,
      B_FALSE) == 0) && (strcmp(shareopts, "off") != 0));

  mounted = (clp->cl_gflags & CL_GATHER_DONT_UNMOUNT) ||
      zfs_is_mounted(cn->cn_handle, ((void*)0));

  if (!mounted && (cn->cn_mounted ||
      ((sharenfs || sharesmb || clp->cl_waslegacy) &&
      (zfs_prop_get_int(cn->cn_handle,
      ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON)))) {

   if (zfs_mount(cn->cn_handle, ((void*)0), 0) != 0)
    errors++;
   else
    mounted = TRUE;
  }






  if (sharenfs && mounted)
   errors += zfs_share_nfs(cn->cn_handle);
  else if (cn->cn_shared || clp->cl_waslegacy)
   errors += zfs_unshare_nfs(cn->cn_handle, ((void*)0));
  if (sharesmb && mounted)
   errors += zfs_share_smb(cn->cn_handle);
  else if (cn->cn_shared || clp->cl_waslegacy)
   errors += zfs_unshare_smb(cn->cn_handle, ((void*)0));
 }

 return (errors ? -1 : 0);
}
