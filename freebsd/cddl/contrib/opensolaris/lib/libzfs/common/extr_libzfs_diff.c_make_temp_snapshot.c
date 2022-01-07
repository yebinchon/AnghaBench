
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int zc_value; int zc_name; int zc_cleanup_fd; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
struct TYPE_13__ {int libzfs_fd; } ;
typedef TYPE_3__ libzfs_handle_t ;
struct TYPE_14__ {int tmpsnap; int ds; int tosnap; int errbuf; int cleanupfd; TYPE_1__* zhp; } ;
typedef TYPE_4__ differ_info_t ;
struct TYPE_11__ {TYPE_3__* zfs_hdl; } ;


 int EPERM ;
 int EZFS_DIFF ;
 int TEXT_DOMAIN ;
 char* ZDIFF_PREFIX ;
 int ZFS_IOC_TMP_SNAPSHOT ;
 char* dgettext (int ,char*) ;
 int errno ;
 int getpid () ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int snprintf (int ,int,char*,...) ;
 int strlcpy (int ,int ,int) ;
 int zfs_asprintf (TYPE_3__*,char*,int ,int ) ;
 int zfs_error (TYPE_3__*,int ,int ) ;
 int zfs_standard_error (TYPE_3__*,int,int ) ;
 int zfs_strdup (TYPE_3__*,int ) ;

__attribute__((used)) static int
make_temp_snapshot(differ_info_t *di)
{
 libzfs_handle_t *hdl = di->zhp->zfs_hdl;
 zfs_cmd_t zc = { 0 };

 (void) snprintf(zc.zc_value, sizeof (zc.zc_value),
     ZDIFF_PREFIX, getpid());
 (void) strlcpy(zc.zc_name, di->ds, sizeof (zc.zc_name));
 zc.zc_cleanup_fd = di->cleanupfd;

 if (ioctl(hdl->libzfs_fd, ZFS_IOC_TMP_SNAPSHOT, &zc) != 0) {
  int err = errno;
  if (err == EPERM) {
   (void) snprintf(di->errbuf, sizeof (di->errbuf),
       dgettext(TEXT_DOMAIN, "The diff delegated "
       "permission is needed in order\nto create a "
       "just-in-time snapshot for diffing\n"));
   return (zfs_error(hdl, EZFS_DIFF, di->errbuf));
  } else {
   (void) snprintf(di->errbuf, sizeof (di->errbuf),
       dgettext(TEXT_DOMAIN, "Cannot create just-in-time "
       "snapshot of '%s'"), zc.zc_name);
   return (zfs_standard_error(hdl, err, di->errbuf));
  }
 }

 di->tmpsnap = zfs_strdup(hdl, zc.zc_value);
 di->tosnap = zfs_asprintf(hdl, "%s@%s", di->ds, di->tmpsnap);
 return (0);
}
