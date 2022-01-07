
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnttab {int mnt_mountp; } ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ libzfs_mnttab_find (int *,char const*,struct mnttab*) ;
 char* zfs_strdup (int *,int ) ;

boolean_t
is_mounted(libzfs_handle_t *zfs_hdl, const char *special, char **where)
{
 struct mnttab entry;

 if (libzfs_mnttab_find(zfs_hdl, special, &entry) != 0)
  return (B_FALSE);

 if (where != ((void*)0))
  *where = zfs_strdup(zfs_hdl, entry.mnt_mountp);

 return (B_TRUE);
}
