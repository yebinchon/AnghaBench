
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int zpool_hdl; int zpool_name; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_12__ {int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;
struct TYPE_13__ {int member_0; } ;
typedef TYPE_3__ prop_flags_t ;
typedef int nvlist_t ;
typedef int errbuf ;


 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_SET_PROPS ;
 int ZPOOL_PROP_VERSION ;
 char* dgettext (int ,char*) ;
 int errno ;
 int no_memory (int ) ;
 scalar_t__ nvlist_add_string (int *,char const*,char const*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 scalar_t__ zcmd_write_src_nvlist (int ,TYPE_2__*,int *) ;
 int zfs_ioctl (int ,int ,TYPE_2__*) ;
 int zpool_get_prop_int (TYPE_1__*,int ,int *) ;
 int zpool_props_refresh (TYPE_1__*) ;
 int zpool_standard_error (int ,int ,char*) ;
 int * zpool_valid_proplist (int ,int ,int *,int ,TYPE_3__,char*) ;

int
zpool_set_prop(zpool_handle_t *zhp, const char *propname, const char *propval)
{
 zfs_cmd_t zc = { 0 };
 int ret = -1;
 char errbuf[1024];
 nvlist_t *nvl = ((void*)0);
 nvlist_t *realprops;
 uint64_t version;
 prop_flags_t flags = { 0 };

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "cannot set property for '%s'"),
     zhp->zpool_name);

 if (nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0) != 0)
  return (no_memory(zhp->zpool_hdl));

 if (nvlist_add_string(nvl, propname, propval) != 0) {
  nvlist_free(nvl);
  return (no_memory(zhp->zpool_hdl));
 }

 version = zpool_get_prop_int(zhp, ZPOOL_PROP_VERSION, ((void*)0));
 if ((realprops = zpool_valid_proplist(zhp->zpool_hdl,
     zhp->zpool_name, nvl, version, flags, errbuf)) == ((void*)0)) {
  nvlist_free(nvl);
  return (-1);
 }

 nvlist_free(nvl);
 nvl = realprops;




 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));

 if (zcmd_write_src_nvlist(zhp->zpool_hdl, &zc, nvl) != 0) {
  nvlist_free(nvl);
  return (-1);
 }

 ret = zfs_ioctl(zhp->zpool_hdl, ZFS_IOC_POOL_SET_PROPS, &zc);

 zcmd_free_nvlists(&zc);
 nvlist_free(nvl);

 if (ret)
  (void) zpool_standard_error(zhp->zpool_hdl, errno, errbuf);
 else
  (void) zpool_props_refresh(zhp);

 return (ret);
}
