
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int topo_walk_t ;
typedef int topo_hdl_t ;
struct TYPE_5__ {int * libzfs_fru_hash; int * libzfs_topo_hdl; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int B_FALSE ;
 int FM_FMRI_SCHEME_HC ;
 int TOPO_VERSION ;
 int TOPO_WALK_CHILD ;
 int ZFS_FRU_HASH_SIZE ;
 int * _topo_dlhandle ;
 int _topo_hdl_strfree (int *,char*) ;
 int * _topo_open (int ,int *,int*) ;
 char* _topo_snap_hold (int *,int *,int*) ;
 int _topo_walk_fini (int *) ;
 int * _topo_walk_init (int *,int ,int ,TYPE_1__*,int*) ;
 int _topo_walk_step (int *,int ) ;
 int * calloc (int ,int) ;
 int libzfs_fru_clear (TYPE_1__*,int ) ;
 int libzfs_fru_gather ;

void
libzfs_fru_refresh(libzfs_handle_t *hdl)
{
 int err;
 char *uuid;
 topo_hdl_t *thp;
 topo_walk_t *twp;

 if (_topo_dlhandle == ((void*)0))
  return;




 libzfs_fru_clear(hdl, B_FALSE);

 if ((hdl->libzfs_topo_hdl = _topo_open(TOPO_VERSION,
     ((void*)0), &err)) == ((void*)0))
  return;

 thp = hdl->libzfs_topo_hdl;

 if ((uuid = _topo_snap_hold(thp, ((void*)0), &err)) == ((void*)0))
  return;

 _topo_hdl_strfree(thp, uuid);

 if (hdl->libzfs_fru_hash == ((void*)0) &&
     (hdl->libzfs_fru_hash =
     calloc(ZFS_FRU_HASH_SIZE, sizeof (void *))) == ((void*)0))
  return;





 twp = _topo_walk_init(thp, FM_FMRI_SCHEME_HC,
     libzfs_fru_gather, hdl, &err);
 if (twp != ((void*)0)) {
  (void) _topo_walk_step(twp, TOPO_WALK_CHILD);
  _topo_walk_fini(twp);
 }
}
