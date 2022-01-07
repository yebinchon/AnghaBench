
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int libzfs_handle_t ;


 int EZFS_NOCAP ;
 int EZFS_OPENFAILED ;
 int MAXPATHLEN ;
 int O_NDELAY ;
 int O_RDWR ;
 int RTLD_DEFAULT ;
 int TEXT_DOMAIN ;
 int VT_ENOSPC ;
 char* ZFS_RDISK_ROOT ;
 int close (int) ;
 int dgettext (int ,char*) ;
 scalar_t__ dlsym (int ,char*) ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,int ,char const*) ;

__attribute__((used)) static int
zpool_relabel_disk(libzfs_handle_t *hdl, const char *name)
{
 return (0);
}
