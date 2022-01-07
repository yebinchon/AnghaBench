
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int EZFS_NOMEM ;
 int zfs_error (int *,int ,char*) ;

int
no_memory(libzfs_handle_t *hdl)
{
 return (zfs_error(hdl, EZFS_NOMEM, "internal error"));
}
