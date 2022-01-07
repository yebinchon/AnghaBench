
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* zpool_next; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {TYPE_1__* libzfs_pool_handles; } ;
typedef TYPE_2__ libzfs_handle_t ;


 int zpool_close (TYPE_1__*) ;

void
zpool_free_handles(libzfs_handle_t *hdl)
{
 zpool_handle_t *next, *zph = hdl->libzfs_pool_handles;

 while (zph != ((void*)0)) {
  next = zph->zpool_next;
  zpool_close(zph);
  zph = next;
 }
 hdl->libzfs_pool_handles = ((void*)0);
}
