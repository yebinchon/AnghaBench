
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int zlp_rewind; } ;
typedef TYPE_1__ zpool_load_policy_t ;
typedef int zpool_handle_t ;
struct TYPE_14__ {int zc_nvlist_conf_size; int zc_cookie; int zc_guid; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;
struct TYPE_15__ {int import; int create; } ;
typedef TYPE_3__ prop_flags_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int desc ;


 int B_FALSE ;
 int B_TRUE ;



 int ENOMEM ;



 int EZFS_BADDEV ;
 int EZFS_BADVERSION ;
 int EZFS_INVALCONFIG ;
 int EZFS_INVALIDNAME ;
 int EZFS_NAMETOOLONG ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_IMPORT ;
 int ZPOOL_CONFIG_CAN_RDONLY ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_MISSING_DEVICES ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_UNSUP_FEAT ;
 int ZPOOL_CONFIG_VERSION ;
 int ZPOOL_DO_REWIND ;
 int ZPOOL_TRY_REWIND ;
 char* dgettext (int ,char*) ;
 int errno ;
 int nvlist_exists (int *,int ) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int print_vdev_tree (int *,int *,int *,int) ;
 int printf (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int strlcpy (int ,char*,int) ;
 int verify (int) ;
 scalar_t__ zcmd_alloc_dst_nvlist (int *,TYPE_2__*,int) ;
 scalar_t__ zcmd_expand_dst_nvlist (int *,TYPE_2__*) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 int zcmd_read_dst_nvlist (int *,TYPE_2__*,int **) ;
 scalar_t__ zcmd_write_conf_nvlist (int *,TYPE_2__*,int *) ;
 scalar_t__ zcmd_write_src_nvlist (int *,TYPE_2__*,int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_error_fmt (int *,int ,char*,char const*) ;
 int zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zpool_close (int *) ;
 int zpool_explain_recover (int *,char*,int,int *) ;
 int zpool_get_load_policy (int *,TYPE_1__*) ;
 int zpool_name_valid (int *,int ,char const*) ;
 scalar_t__ zpool_open_silent (int *,char*,int **) ;
 int zpool_print_unsup_feat (int *) ;
 int zpool_rewind_exclaim (int *,char*,int,int *) ;
 int zpool_standard_error (int *,int,char*) ;
 int * zpool_valid_proplist (int *,char*,int *,int ,TYPE_3__,char*) ;

int
zpool_import_props(libzfs_handle_t *hdl, nvlist_t *config, const char *newname,
    nvlist_t *props, int flags)
{
 zfs_cmd_t zc = { 0 };
 zpool_load_policy_t policy;
 nvlist_t *nv = ((void*)0);
 nvlist_t *nvinfo = ((void*)0);
 nvlist_t *missing = ((void*)0);
 char *thename;
 char *origname;
 int ret;
 int error = 0;
 char errbuf[1024];

 verify(nvlist_lookup_string(config, ZPOOL_CONFIG_POOL_NAME,
     &origname) == 0);

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot import pool '%s'"), origname);

 if (newname != ((void*)0)) {
  if (!zpool_name_valid(hdl, B_FALSE, newname))
   return (zfs_error_fmt(hdl, EZFS_INVALIDNAME,
       dgettext(TEXT_DOMAIN, "cannot import '%s'"),
       newname));
  thename = (char *)newname;
 } else {
  thename = origname;
 }

 if (props != ((void*)0)) {
  uint64_t version;
  prop_flags_t flags = { .create = B_FALSE, .import = B_TRUE };

  verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_VERSION,
      &version) == 0);

  if ((props = zpool_valid_proplist(hdl, origname,
      props, version, flags, errbuf)) == ((void*)0))
   return (-1);
  if (zcmd_write_src_nvlist(hdl, &zc, props) != 0) {
   nvlist_free(props);
   return (-1);
  }
  nvlist_free(props);
 }

 (void) strlcpy(zc.zc_name, thename, sizeof (zc.zc_name));

 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID,
     &zc.zc_guid) == 0);

 if (zcmd_write_conf_nvlist(hdl, &zc, config) != 0) {
  zcmd_free_nvlists(&zc);
  return (-1);
 }
 if (zcmd_alloc_dst_nvlist(hdl, &zc, zc.zc_nvlist_conf_size * 2) != 0) {
  zcmd_free_nvlists(&zc);
  return (-1);
 }

 zc.zc_cookie = flags;
 while ((ret = zfs_ioctl(hdl, ZFS_IOC_POOL_IMPORT, &zc)) != 0 &&
     errno == ENOMEM) {
  if (zcmd_expand_dst_nvlist(hdl, &zc) != 0) {
   zcmd_free_nvlists(&zc);
   return (-1);
  }
 }
 if (ret != 0)
  error = errno;

 (void) zcmd_read_dst_nvlist(hdl, &zc, &nv);

 zcmd_free_nvlists(&zc);

 zpool_get_load_policy(config, &policy);

 if (error) {
  char desc[1024];





  if (policy.zlp_rewind & ZPOOL_TRY_REWIND) {
   zpool_rewind_exclaim(hdl, newname ? origname : thename,
       B_TRUE, nv);
   nvlist_free(nv);
   return (-1);
  }

  if (newname == ((void*)0))
   (void) snprintf(desc, sizeof (desc),
       dgettext(TEXT_DOMAIN, "cannot import '%s'"),
       thename);
  else
   (void) snprintf(desc, sizeof (desc),
       dgettext(TEXT_DOMAIN, "cannot import '%s' as '%s'"),
       origname, thename);

  switch (error) {
  case 130:
   if (nv != ((void*)0) && nvlist_lookup_nvlist(nv,
       ZPOOL_CONFIG_LOAD_INFO, &nvinfo) == 0 &&
       nvlist_exists(nvinfo, ZPOOL_CONFIG_UNSUP_FEAT)) {
    (void) printf(dgettext(TEXT_DOMAIN, "This "
        "pool uses the following feature(s) not "
        "supported by this system:\n"));
    zpool_print_unsup_feat(nv);
    if (nvlist_exists(nvinfo,
        ZPOOL_CONFIG_CAN_RDONLY)) {
     (void) printf(dgettext(TEXT_DOMAIN,
         "All unsupported features are only "
         "required for writing to the pool."
         "\nThe pool can be imported using "
         "'-o readonly=on'.\n"));
    }
   }



   (void) zfs_error(hdl, EZFS_BADVERSION, desc);
   break;

  case 132:
   (void) zfs_error(hdl, EZFS_INVALCONFIG, desc);
   break;

  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "one or more devices is read only"));
   (void) zfs_error(hdl, EZFS_BADDEV, desc);
   break;

  case 129:
   if (nv && nvlist_lookup_nvlist(nv,
       ZPOOL_CONFIG_LOAD_INFO, &nvinfo) == 0 &&
       nvlist_lookup_nvlist(nvinfo,
       ZPOOL_CONFIG_MISSING_DEVICES, &missing) == 0) {
    (void) printf(dgettext(TEXT_DOMAIN,
        "The devices below are missing or "
        "corrupted, use '-m' to import the pool "
        "anyway:\n"));
    print_vdev_tree(hdl, ((void*)0), missing, 2);
    (void) printf("\n");
   }
   (void) zpool_standard_error(hdl, error, desc);
   break;

  case 133:
   (void) zpool_standard_error(hdl, error, desc);
   break;
  case 131:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "new name of at least one dataset is longer than "
       "the maximum allowable length"));
   (void) zfs_error(hdl, EZFS_NAMETOOLONG, desc);
   break;
  default:
   (void) zpool_standard_error(hdl, error, desc);
   zpool_explain_recover(hdl,
       newname ? origname : thename, -error, nv);
   break;
  }

  nvlist_free(nv);
  ret = -1;
 } else {
  zpool_handle_t *zhp;




  if (zpool_open_silent(hdl, thename, &zhp) != 0)
   ret = -1;
  else if (zhp != ((void*)0))
   zpool_close(zhp);
  if (policy.zlp_rewind &
      (ZPOOL_DO_REWIND | ZPOOL_TRY_REWIND)) {
   zpool_rewind_exclaim(hdl, newname ? origname : thename,
       ((policy.zlp_rewind & ZPOOL_TRY_REWIND) != 0), nv);
  }
  nvlist_free(nv);
  return (0);
 }

 return (ret);
}
