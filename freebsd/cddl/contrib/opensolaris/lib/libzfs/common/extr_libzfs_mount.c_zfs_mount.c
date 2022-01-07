
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* zfs_name; int zpool_hdl; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int u_longlong_t ;
struct stat {int dummy; } ;
typedef int mountpoint ;
typedef int mntopts ;
typedef int libzfs_handle_t ;
typedef int buf ;


 scalar_t__ EBUSY ;
 scalar_t__ ENOTSUP ;
 scalar_t__ EPERM ;
 int EZFS_MOUNTFAILED ;
 int MNTOPT_REMOUNT ;
 int MNTTYPE_ZFS ;
 int MNT_LINE_MAX ;
 int MS_OVERLAY ;
 int MS_RDONLY ;
 int TEXT_DOMAIN ;
 int VERIFY (int) ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_VERSION ;
 int ZPOOL_PROP_READONLY ;
 char* dgettext (int ,char*) ;
 int dir_is_empty (char*) ;
 scalar_t__ errno ;
 int libzfs_mnttab_add (int *,int ,char*,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ mkdirp (char*,int) ;
 int snprintf (char*,int,char*,int ,int) ;
 char* strerror (scalar_t__) ;
 int strlcpy (char*,char const*,int) ;
 int * strstr (char*,int ) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_error_fmt (int *,int ,char*,char*) ;
 int zfs_get_name (TYPE_1__*) ;
 int zfs_is_mountable (TYPE_1__*,char*,int,int *) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 scalar_t__ zfs_spa_version (TYPE_1__*,int*) ;
 scalar_t__ zmount (int ,char*,int,int ,int *,int ,char*,int) ;
 scalar_t__ zpool_get_prop_int (int ,int ,int *) ;

int
zfs_mount(zfs_handle_t *zhp, const char *options, int flags)
{
 struct stat buf;
 char mountpoint[ZFS_MAXPROPLEN];
 char mntopts[MNT_LINE_MAX];
 libzfs_handle_t *hdl = zhp->zfs_hdl;

 if (options == ((void*)0))
  mntopts[0] = '\0';
 else
  (void) strlcpy(mntopts, options, sizeof (mntopts));




 if (zpool_get_prop_int(zhp->zpool_hdl, ZPOOL_PROP_READONLY, ((void*)0)))
  flags |= MS_RDONLY;

 if (!zfs_is_mountable(zhp, mountpoint, sizeof (mountpoint), ((void*)0)))
  return (0);


 if (lstat(mountpoint, &buf) != 0) {
  if (mkdirp(mountpoint, 0755) != 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "failed to create mountpoint"));
   return (zfs_error_fmt(hdl, EZFS_MOUNTFAILED,
       dgettext(TEXT_DOMAIN, "cannot mount '%s'"),
       mountpoint));
  }
 }
 if (zmount(zfs_get_name(zhp), mountpoint, flags,
     MNTTYPE_ZFS, ((void*)0), 0, mntopts, sizeof (mntopts)) != 0) {





  if (errno == EBUSY) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "mountpoint or dataset is busy"));
  } else if (errno == EPERM) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Insufficient privileges"));
  } else if (errno == ENOTSUP) {
   char buf[256];
   int spa_version;

   VERIFY(zfs_spa_version(zhp, &spa_version) == 0);
   (void) snprintf(buf, sizeof (buf),
       dgettext(TEXT_DOMAIN, "Can't mount a version %lld "
       "file system on a version %d pool. Pool must be"
       " upgraded to mount this file system."),
       (u_longlong_t)zfs_prop_get_int(zhp,
       ZFS_PROP_VERSION), spa_version);
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, buf));
  } else {
   zfs_error_aux(hdl, strerror(errno));
  }
  return (zfs_error_fmt(hdl, EZFS_MOUNTFAILED,
      dgettext(TEXT_DOMAIN, "cannot mount '%s'"),
      zhp->zfs_name));
 }


 libzfs_mnttab_add(hdl, zfs_get_name(zhp), mountpoint,
     mntopts);
 return (0);
}
