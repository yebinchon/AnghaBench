
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int libzfs_topo_hdl; int * libzfs_fru_hash; } ;
typedef TYPE_1__ libzfs_handle_t ;
typedef int boolean_t ;


 int _topo_fmri_strcmp_noauth (int ,char const*,char const*) ;
 int libzfs_fru_refresh (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char const*) ;

boolean_t
libzfs_fru_compare(libzfs_handle_t *hdl, const char *a, const char *b)
{
 if (hdl->libzfs_fru_hash == ((void*)0))
  libzfs_fru_refresh(hdl);

 if (hdl->libzfs_fru_hash == ((void*)0))
  return (strcmp(a, b) == 0);

 return (_topo_fmri_strcmp_noauth(hdl->libzfs_topo_hdl, a, b));
}
