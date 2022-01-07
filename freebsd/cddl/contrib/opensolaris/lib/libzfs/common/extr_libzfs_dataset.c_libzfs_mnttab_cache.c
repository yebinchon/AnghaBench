
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int libzfs_mnttab_enable; } ;
typedef TYPE_1__ libzfs_handle_t ;
typedef int boolean_t ;



void
libzfs_mnttab_cache(libzfs_handle_t *hdl, boolean_t enable)
{
 hdl->libzfs_mnttab_enable = enable;
}
