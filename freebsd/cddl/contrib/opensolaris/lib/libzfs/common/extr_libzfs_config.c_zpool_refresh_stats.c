
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int zpool_config_size; void* zpool_state; int * zpool_config; int * zpool_old_config; TYPE_3__* zpool_hdl; int zpool_name; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_14__ {int zc_cookie; int zc_nvlist_dst_size; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_15__ {int libzfs_fd; } ;
typedef TYPE_3__ libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 void* POOL_STATE_ACTIVE ;
 void* POOL_STATE_UNAVAIL ;
 int ZFS_IOC_POOL_STATS ;
 int ZPOOL_CONFIG_POOL_TXG ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int strcpy (int ,int ) ;
 int verify (int) ;
 scalar_t__ zcmd_alloc_dst_nvlist (TYPE_3__*,TYPE_2__*,int) ;
 scalar_t__ zcmd_expand_dst_nvlist (TYPE_3__*,TYPE_2__*) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 scalar_t__ zcmd_read_dst_nvlist (TYPE_3__*,TYPE_2__*,int **) ;

int
zpool_refresh_stats(zpool_handle_t *zhp, boolean_t *missing)
{
 zfs_cmd_t zc = { 0 };
 int error;
 nvlist_t *config;
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 *missing = B_FALSE;
 (void) strcpy(zc.zc_name, zhp->zpool_name);

 if (zhp->zpool_config_size == 0)
  zhp->zpool_config_size = 1 << 16;

 if (zcmd_alloc_dst_nvlist(hdl, &zc, zhp->zpool_config_size) != 0)
  return (-1);

 for (;;) {
  if (ioctl(zhp->zpool_hdl->libzfs_fd, ZFS_IOC_POOL_STATS,
      &zc) == 0) {



   error = zc.zc_cookie;
   break;
  }

  if (errno == ENOMEM) {
   if (zcmd_expand_dst_nvlist(hdl, &zc) != 0) {
    zcmd_free_nvlists(&zc);
    return (-1);
   }
  } else {
   zcmd_free_nvlists(&zc);
   if (errno == ENOENT || errno == EINVAL)
    *missing = B_TRUE;
   zhp->zpool_state = POOL_STATE_UNAVAIL;
   return (0);
  }
 }

 if (zcmd_read_dst_nvlist(hdl, &zc, &config) != 0) {
  zcmd_free_nvlists(&zc);
  return (-1);
 }

 zcmd_free_nvlists(&zc);

 zhp->zpool_config_size = zc.zc_nvlist_dst_size;

 if (zhp->zpool_config != ((void*)0)) {
  uint64_t oldtxg, newtxg;

  verify(nvlist_lookup_uint64(zhp->zpool_config,
      ZPOOL_CONFIG_POOL_TXG, &oldtxg) == 0);
  verify(nvlist_lookup_uint64(config,
      ZPOOL_CONFIG_POOL_TXG, &newtxg) == 0);

  nvlist_free(zhp->zpool_old_config);

  if (oldtxg != newtxg) {
   nvlist_free(zhp->zpool_config);
   zhp->zpool_old_config = ((void*)0);
  } else {
   zhp->zpool_old_config = zhp->zpool_config;
  }
 }

 zhp->zpool_config = config;
 if (error)
  zhp->zpool_state = POOL_STATE_UNAVAIL;
 else
  zhp->zpool_state = POOL_STATE_ACTIVE;

 return (0);
}
