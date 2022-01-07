
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int libzfs_topo_hdl; TYPE_2__** libzfs_fru_hash; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_6__ {char const* zf_device; int zf_fru; struct TYPE_6__* zf_next; } ;
typedef TYPE_2__ libzfs_fru_t ;


 size_t ZFS_FRU_HASH_SIZE ;
 scalar_t__ _topo_fmri_strcmp_noauth (int ,char const*,int ) ;
 int libzfs_fru_refresh (TYPE_1__*) ;

const char *
libzfs_fru_devpath(libzfs_handle_t *hdl, const char *fru)
{
 libzfs_fru_t *frup;
 size_t idx;

 if (hdl->libzfs_fru_hash == ((void*)0))
  libzfs_fru_refresh(hdl);

 if (hdl->libzfs_fru_hash == ((void*)0))
  return (((void*)0));

 for (idx = 0; idx < ZFS_FRU_HASH_SIZE; idx++) {
  for (frup = hdl->libzfs_fru_hash[idx]; frup != ((void*)0);
      frup = frup->zf_next) {
   if (_topo_fmri_strcmp_noauth(hdl->libzfs_topo_hdl,
       fru, frup->zf_fru))
    return (frup->zf_device);
  }
 }

 return (((void*)0));
}
