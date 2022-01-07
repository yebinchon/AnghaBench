
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_POOL_SYNC ;
 int lzc_ioctl (int ,char const*,int *,int *) ;

int
lzc_sync(const char *pool_name, nvlist_t *innvl, nvlist_t **outnvl)
{
 return (lzc_ioctl(ZFS_IOC_POOL_SYNC, pool_name, innvl, ((void*)0)));
}
