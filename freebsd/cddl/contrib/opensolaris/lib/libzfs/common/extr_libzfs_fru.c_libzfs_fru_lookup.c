
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** libzfs_fru_hash; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_6__ {char const* zf_fru; int zf_device; struct TYPE_6__* zf_chain; } ;
typedef TYPE_2__ libzfs_fru_t ;


 size_t fru_strhash (char const*) ;
 int libzfs_fru_refresh (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,int ) ;

const char *
libzfs_fru_lookup(libzfs_handle_t *hdl, const char *devpath)
{
 size_t idx = fru_strhash(devpath);
 libzfs_fru_t *frup;

 if (hdl->libzfs_fru_hash == ((void*)0))
  libzfs_fru_refresh(hdl);

 if (hdl->libzfs_fru_hash == ((void*)0))
  return (((void*)0));

 for (frup = hdl->libzfs_fru_hash[idx]; frup != ((void*)0);
     frup = frup->zf_chain) {
  if (strcmp(devpath, frup->zf_device) == 0)
   return (frup->zf_fru);
 }

 return (((void*)0));
}
