
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_8__ {char* zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int name ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_CREATETXG ;
 int ZFS_PROP_CREATION ;
 int ZFS_PROP_GUID ;
 int ZFS_TYPE_BOOKMARK ;
 int ZFS_TYPE_SNAPSHOT ;
 int fnvlist_add_boolean (int *,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvpair_value_nvlist (int *) ;
 int lzc_get_bookmarks (char*,int *,int **) ;
 TYPE_1__* make_bookmark_handle (TYPE_1__*,char*,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int zfs_get_type (TYPE_1__*) ;
 int zfs_prop_to_name (int ) ;

int
zfs_iter_bookmarks(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
 zfs_handle_t *nzhp;
 nvlist_t *props = ((void*)0);
 nvlist_t *bmarks = ((void*)0);
 int err;

 if ((zfs_get_type(zhp) & (ZFS_TYPE_SNAPSHOT | ZFS_TYPE_BOOKMARK)) != 0)
  return (0);


 props = fnvlist_alloc();
 fnvlist_add_boolean(props, zfs_prop_to_name(ZFS_PROP_GUID));
 fnvlist_add_boolean(props, zfs_prop_to_name(ZFS_PROP_CREATETXG));
 fnvlist_add_boolean(props, zfs_prop_to_name(ZFS_PROP_CREATION));

 if ((err = lzc_get_bookmarks(zhp->zfs_name, props, &bmarks)) != 0)
  goto out;

 for (nvpair_t *pair = nvlist_next_nvpair(bmarks, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(bmarks, pair)) {
  char name[ZFS_MAX_DATASET_NAME_LEN];
  char *bmark_name;
  nvlist_t *bmark_props;

  bmark_name = nvpair_name(pair);
  bmark_props = fnvpair_value_nvlist(pair);

  (void) snprintf(name, sizeof (name), "%s#%s", zhp->zfs_name,
      bmark_name);

  nzhp = make_bookmark_handle(zhp, name, bmark_props);
  if (nzhp == ((void*)0))
   continue;

  if ((err = func(nzhp, data)) != 0)
   goto out;
 }

out:
 fnvlist_free(props);
 fnvlist_free(bmarks);

 return (err);
}
