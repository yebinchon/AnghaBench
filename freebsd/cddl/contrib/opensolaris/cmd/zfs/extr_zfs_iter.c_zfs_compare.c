
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * zn_handle; } ;
typedef TYPE_1__ zfs_node_t ;
typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;


 int ZFS_PROP_CREATETXG ;
 scalar_t__ strchr (char const*,char) ;
 int strcmp (char const*,char const*) ;
 char* zfs_get_name (int *) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
zfs_compare(const void *larg, const void *rarg, void *unused)
{
 zfs_handle_t *l = ((zfs_node_t *)larg)->zn_handle;
 zfs_handle_t *r = ((zfs_node_t *)rarg)->zn_handle;
 const char *lname = zfs_get_name(l);
 const char *rname = zfs_get_name(r);
 char *lat, *rat;
 uint64_t lcreate, rcreate;
 int ret;

 lat = (char *)strchr(lname, '@');
 rat = (char *)strchr(rname, '@');

 if (lat != ((void*)0))
  *lat = '\0';
 if (rat != ((void*)0))
  *rat = '\0';

 ret = strcmp(lname, rname);
 if (ret == 0 && (lat != ((void*)0) || rat != ((void*)0))) {




  if (lat == ((void*)0)) {
   ret = -1;
  } else if (rat == ((void*)0)) {
   ret = 1;
  } else {






   lcreate = zfs_prop_get_int(l, ZFS_PROP_CREATETXG);
   rcreate = zfs_prop_get_int(r, ZFS_PROP_CREATETXG);





   if (lcreate == 0 && rcreate == 0)
    ret = strcmp(lat + 1, rat + 1);
   else if (lcreate < rcreate)
    ret = -1;
   else if (lcreate > rcreate)
    ret = 1;
  }
 }

 if (lat != ((void*)0))
  *lat = '@';
 if (rat != ((void*)0))
  *rat = '@';

 return (ret);
}
