
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct destroydata {char* snapname; int nvl; int member_0; } ;
typedef int boolean_t ;


 int ENOENT ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 scalar_t__ nvlist_alloc (int *,int ,int ) ;
 scalar_t__ nvlist_empty (int ) ;
 int nvlist_free (int ) ;
 int verify (int) ;
 int zfs_check_snap_cb (int ,struct destroydata*) ;
 int zfs_destroy_snaps_nvl (int ,int ,int ) ;
 int zfs_handle_dup (TYPE_1__*) ;
 int zfs_standard_error_fmt (int ,int ,int ,int ,char*) ;

int
zfs_destroy_snaps(zfs_handle_t *zhp, char *snapname, boolean_t defer)
{
 int ret;
 struct destroydata dd = { 0 };

 dd.snapname = snapname;
 verify(nvlist_alloc(&dd.nvl, NV_UNIQUE_NAME, 0) == 0);
 (void) zfs_check_snap_cb(zfs_handle_dup(zhp), &dd);

 if (nvlist_empty(dd.nvl)) {
  ret = zfs_standard_error_fmt(zhp->zfs_hdl, ENOENT,
      dgettext(TEXT_DOMAIN, "cannot destroy '%s@%s'"),
      zhp->zfs_name, snapname);
 } else {
  ret = zfs_destroy_snaps_nvl(zhp->zfs_hdl, dd.nvl, defer);
 }
 nvlist_free(dd.nvl);
 return (ret);
}
