
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;


 int ZFS_IOCVER_NONE ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

int
get_zfs_ioctl_version(void)
{
 size_t ver_size;
 int ver = ZFS_IOCVER_NONE;

 ver_size = sizeof(ver);
 sysctlbyname("vfs.zfs.version.ioctl", &ver, &ver_size, ((void*)0), 0);

 return (ver);
}
