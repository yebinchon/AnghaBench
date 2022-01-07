
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int zlp_rewind; } ;
typedef TYPE_1__ zpool_load_policy_t ;
struct TYPE_14__ {char const* zpool_name; int zpool_config_size; int * zpool_hdl; } ;
typedef TYPE_2__ zpool_handle_t ;
struct TYPE_15__ {int zc_cookie; int zc_name; int zc_guid; int member_0; } ;
typedef TYPE_3__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ EACCES ;
 scalar_t__ ENOMEM ;
 scalar_t__ EPERM ;
 int EZFS_ISSPARE ;
 int EZFS_NODEVICE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_CLEAR ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_DO_REWIND ;
 int ZPOOL_TRY_REWIND ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlcpy (int ,char const*,int) ;
 int verify (int) ;
 scalar_t__ zcmd_alloc_dst_nvlist (int *,TYPE_3__*,int) ;
 scalar_t__ zcmd_expand_dst_nvlist (int *,TYPE_3__*) ;
 int zcmd_free_nvlists (TYPE_3__*) ;
 int zcmd_read_dst_nvlist (int *,TYPE_3__*,int **) ;
 scalar_t__ zcmd_write_src_nvlist (int *,TYPE_3__*,int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_ioctl (int *,int ,TYPE_3__*) ;
 int * zpool_find_vdev (TYPE_2__*,char const*,scalar_t__*,scalar_t__*,int *) ;
 int zpool_get_load_policy (int *,TYPE_1__*) ;
 int zpool_rewind_exclaim (int *,int ,int,int *) ;
 int zpool_standard_error (int *,scalar_t__,char*) ;

int
zpool_clear(zpool_handle_t *zhp, const char *path, nvlist_t *rewindnvl)
{
 zfs_cmd_t zc = { 0 };
 char msg[1024];
 nvlist_t *tgt;
 zpool_load_policy_t policy;
 boolean_t avail_spare, l2cache;
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 nvlist_t *nvi = ((void*)0);
 int error;

 if (path)
  (void) snprintf(msg, sizeof (msg),
      dgettext(TEXT_DOMAIN, "cannot clear errors for %s"),
      path);
 else
  (void) snprintf(msg, sizeof (msg),
      dgettext(TEXT_DOMAIN, "cannot clear errors for %s"),
      zhp->zpool_name);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 if (path) {
  if ((tgt = zpool_find_vdev(zhp, path, &avail_spare,
      &l2cache, ((void*)0))) == ((void*)0))
   return (zfs_error(hdl, EZFS_NODEVICE, msg));





  if (avail_spare)
   return (zfs_error(hdl, EZFS_ISSPARE, msg));

  verify(nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID,
      &zc.zc_guid) == 0);
 }

 zpool_get_load_policy(rewindnvl, &policy);
 zc.zc_cookie = policy.zlp_rewind;

 if (zcmd_alloc_dst_nvlist(hdl, &zc, zhp->zpool_config_size * 2) != 0)
  return (-1);

 if (zcmd_write_src_nvlist(hdl, &zc, rewindnvl) != 0)
  return (-1);

 while ((error = zfs_ioctl(hdl, ZFS_IOC_CLEAR, &zc)) != 0 &&
     errno == ENOMEM) {
  if (zcmd_expand_dst_nvlist(hdl, &zc) != 0) {
   zcmd_free_nvlists(&zc);
   return (-1);
  }
 }

 if (!error || ((policy.zlp_rewind & ZPOOL_TRY_REWIND) &&
     errno != EPERM && errno != EACCES)) {
  if (policy.zlp_rewind &
      (ZPOOL_DO_REWIND | ZPOOL_TRY_REWIND)) {
   (void) zcmd_read_dst_nvlist(hdl, &zc, &nvi);
   zpool_rewind_exclaim(hdl, zc.zc_name,
       ((policy.zlp_rewind & ZPOOL_TRY_REWIND) != 0),
       nvi);
   nvlist_free(nvi);
  }
  zcmd_free_nvlists(&zc);
  return (0);
 }

 zcmd_free_nvlists(&zc);
 return (zpool_standard_error(hdl, errno, msg));
}
