
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
typedef int libzfs_handle_t ;
struct TYPE_3__ {int paths; char** path; int member_0; } ;
typedef TYPE_1__ importargs_t ;


 int * zpool_find_import_impl (int *,TYPE_1__*) ;

nvlist_t *
zpool_find_import(libzfs_handle_t *hdl, int argc, char **argv)
{
 importargs_t iarg = { 0 };

 iarg.paths = argc;
 iarg.path = argv;

 return (zpool_find_import_impl(hdl, &iarg));
}
