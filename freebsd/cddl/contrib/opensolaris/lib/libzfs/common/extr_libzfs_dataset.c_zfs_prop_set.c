
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;


 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int no_memory (int *) ;
 scalar_t__ nvlist_add_string (int *,char const*,char const*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int,char*,int ) ;
 int zfs_prop_set_list (TYPE_1__*,int *) ;

int
zfs_prop_set(zfs_handle_t *zhp, const char *propname, const char *propval)
{
 int ret = -1;
 char errbuf[1024];
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 nvlist_t *nvl = ((void*)0);

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "cannot set property for '%s'"),
     zhp->zfs_name);

 if (nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0) != 0 ||
     nvlist_add_string(nvl, propname, propval) != 0) {
  (void) no_memory(hdl);
  goto error;
 }

 ret = zfs_prop_set_list(zhp, nvl);

error:
 nvlist_free(nvl);
 return (ret);
}
