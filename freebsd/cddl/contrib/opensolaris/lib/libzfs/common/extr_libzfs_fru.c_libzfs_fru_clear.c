
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* libzfs_fru_hash; int * libzfs_topo_hdl; TYPE_2__* libzfs_fru_list; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_7__ {struct TYPE_7__* zf_fru; struct TYPE_7__* zf_device; struct TYPE_7__* zf_next; } ;
typedef TYPE_2__ libzfs_fru_t ;
typedef scalar_t__ boolean_t ;


 int ZFS_FRU_HASH_SIZE ;
 int _topo_close (int *) ;
 int _topo_snap_release (int *) ;
 int bzero (TYPE_2__*,int) ;
 int free (TYPE_2__*) ;

void
libzfs_fru_clear(libzfs_handle_t *hdl, boolean_t final)
{
 libzfs_fru_t *frup;

 while ((frup = hdl->libzfs_fru_list) != ((void*)0)) {
  hdl->libzfs_fru_list = frup->zf_next;
  free(frup->zf_device);
  free(frup->zf_fru);
  free(frup);
 }

 hdl->libzfs_fru_list = ((void*)0);

 if (hdl->libzfs_topo_hdl != ((void*)0)) {
  _topo_snap_release(hdl->libzfs_topo_hdl);
  _topo_close(hdl->libzfs_topo_hdl);
  hdl->libzfs_topo_hdl = ((void*)0);
 }

 if (final) {
  free(hdl->libzfs_fru_hash);
 } else if (hdl->libzfs_fru_hash != ((void*)0)) {
  bzero(hdl->libzfs_fru_hash,
      ZFS_FRU_HASH_SIZE * sizeof (void *));
 }
}
