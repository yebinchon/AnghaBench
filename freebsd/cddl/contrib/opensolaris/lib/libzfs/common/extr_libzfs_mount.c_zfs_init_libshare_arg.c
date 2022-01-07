
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int zfs_init_libshare_impl (int *,int,void*) ;

int
zfs_init_libshare_arg(libzfs_handle_t *zhandle, int service, void *arg)
{
 return (zfs_init_libshare_impl(zhandle, service, arg));
}
