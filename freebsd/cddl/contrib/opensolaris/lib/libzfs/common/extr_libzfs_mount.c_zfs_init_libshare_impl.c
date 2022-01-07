
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * libzfs_sharehdl; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int SA_NO_MEMORY ;
 int SA_OK ;
 int * _sa_init ;
 void* _sa_init_arg (int,void*) ;
 scalar_t__ _sa_needs_refresh (int *) ;
 int zfs_uninit_libshare (TYPE_1__*) ;

__attribute__((used)) static int
zfs_init_libshare_impl(libzfs_handle_t *zhandle, int service, void *arg)
{
 return (SA_OK);
}
