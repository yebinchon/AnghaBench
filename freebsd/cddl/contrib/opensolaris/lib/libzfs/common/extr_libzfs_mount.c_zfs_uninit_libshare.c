
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * libzfs_sharehdl; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int _sa_fini (int *) ;

void
zfs_uninit_libshare(libzfs_handle_t *zhandle)
{
 if (zhandle != ((void*)0) && zhandle->libzfs_sharehdl != ((void*)0)) {




  zhandle->libzfs_sharehdl = ((void*)0);
 }
}
