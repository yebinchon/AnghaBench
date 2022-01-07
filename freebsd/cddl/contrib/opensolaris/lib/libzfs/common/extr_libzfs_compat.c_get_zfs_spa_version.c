
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;


 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
get_zfs_spa_version(void)
{
 size_t ver_size;
 int ver = 0;

 ver_size = sizeof(ver);
 sysctlbyname("vfs.zfs.version.spa", &ver, &ver_size, ((void*)0), 0);

 return (ver);
}
