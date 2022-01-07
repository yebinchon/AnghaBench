
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int EZFS_UMOUNTFAILED ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int errno ;
 int strerror (int ) ;
 scalar_t__ umount2 (char const*,int) ;
 int zfs_error_aux (int *,int ) ;
 int zfs_error_fmt (int *,int ,int ,char const*) ;

__attribute__((used)) static int
unmount_one(libzfs_handle_t *hdl, const char *mountpoint, int flags)
{
 if (umount2(mountpoint, flags) != 0) {
  zfs_error_aux(hdl, strerror(errno));
  return (zfs_error_fmt(hdl, EZFS_UMOUNTFAILED,
      dgettext(TEXT_DOMAIN, "cannot unmount '%s'"),
      mountpoint));
 }

 return (0);
}
