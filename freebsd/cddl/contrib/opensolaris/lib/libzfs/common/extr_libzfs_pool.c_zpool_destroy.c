
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zpool_state; int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int zfs_handle_t ;
struct TYPE_6__ {scalar_t__ zc_history; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int msg ;
typedef int libzfs_handle_t ;


 scalar_t__ EROFS ;
 int EZFS_BADDEV ;
 scalar_t__ POOL_STATE_ACTIVE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_DESTROY ;
 int ZFS_TYPE_FILESYSTEM ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 int remove_mountpoint (int *) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zfs_close (int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int * zfs_open (int *,int ,int ) ;
 int zpool_standard_error (int *,scalar_t__,char*) ;

int
zpool_destroy(zpool_handle_t *zhp, const char *log_str)
{
 zfs_cmd_t zc = { 0 };
 zfs_handle_t *zfp = ((void*)0);
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 char msg[1024];

 if (zhp->zpool_state == POOL_STATE_ACTIVE &&
     (zfp = zfs_open(hdl, zhp->zpool_name, ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (-1);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 zc.zc_history = (uint64_t)(uintptr_t)log_str;

 if (zfs_ioctl(hdl, ZFS_IOC_POOL_DESTROY, &zc) != 0) {
  (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
      "cannot destroy '%s'"), zhp->zpool_name);

  if (errno == EROFS) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "one or more devices is read only"));
   (void) zfs_error(hdl, EZFS_BADDEV, msg);
  } else {
   (void) zpool_standard_error(hdl, errno, msg);
  }

  if (zfp)
   zfs_close(zfp);
  return (-1);
 }

 if (zfp) {
  remove_mountpoint(zfp);
  zfs_close(zfp);
 }

 return (0);
}
