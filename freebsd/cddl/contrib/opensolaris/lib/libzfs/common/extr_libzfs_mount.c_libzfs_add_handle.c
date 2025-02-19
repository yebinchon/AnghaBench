
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_8__ {int cb_alloc; int cb_used; TYPE_1__** cb_handles; } ;
typedef TYPE_2__ get_all_cb_t ;


 TYPE_1__** zfs_realloc (int ,TYPE_1__**,int,size_t) ;

void
libzfs_add_handle(get_all_cb_t *cbp, zfs_handle_t *zhp)
{
 if (cbp->cb_alloc == cbp->cb_used) {
  size_t newsz;
  zfs_handle_t **newhandles;

  newsz = cbp->cb_alloc != 0 ? cbp->cb_alloc * 2 : 64;
  newhandles = zfs_realloc(zhp->zfs_hdl,
      cbp->cb_handles, cbp->cb_alloc * sizeof (zfs_handle_t *),
      newsz * sizeof (zfs_handle_t *));
  cbp->cb_handles = newhandles;
  cbp->cb_alloc = newsz;
 }
 cbp->cb_handles[cbp->cb_used++] = zhp;
}
