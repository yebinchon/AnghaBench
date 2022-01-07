
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int EZFS_INVALCONFIG ;
 int EZFS_NOSPC ;
 int EZFS_POOL_INVALARG ;
 int VDEV_TYPE_DISK ;
 int VDEV_TYPE_MIRROR ;
 int VDEV_TYPE_RAIDZ ;
 int VDEV_TYPE_REPLACING ;
 int VDEV_TYPE_SPARE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_SPARE ;
 int ZPOOL_CONFIG_TYPE ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (char*,int ) ;
 int vdev_get_one_physpath (int *,char*,size_t,size_t*) ;
 scalar_t__ vdev_online (int *) ;

__attribute__((used)) static int
vdev_get_physpaths(nvlist_t *nv, char *physpath, size_t phypath_size,
    size_t *rsz, boolean_t is_spare)
{
 char *type;
 int ret;

 if (nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE, &type) != 0)
  return (EZFS_INVALCONFIG);

 if (strcmp(type, VDEV_TYPE_DISK) == 0) {





  if (is_spare) {
   uint64_t spare = 0;
   (void) nvlist_lookup_uint64(nv, ZPOOL_CONFIG_IS_SPARE,
       &spare);
   if (!spare)
    return (EZFS_INVALCONFIG);
  }

  if (vdev_online(nv)) {
   if ((ret = vdev_get_one_physpath(nv, physpath,
       phypath_size, rsz)) != 0)
    return (ret);
  }
 } else if (strcmp(type, VDEV_TYPE_MIRROR) == 0 ||
     strcmp(type, VDEV_TYPE_RAIDZ) == 0 ||
     strcmp(type, VDEV_TYPE_REPLACING) == 0 ||
     (is_spare = (strcmp(type, VDEV_TYPE_SPARE) == 0))) {
  nvlist_t **child;
  uint_t count;
  int i, ret;

  if (nvlist_lookup_nvlist_array(nv,
      ZPOOL_CONFIG_CHILDREN, &child, &count) != 0)
   return (EZFS_INVALCONFIG);

  for (i = 0; i < count; i++) {
   ret = vdev_get_physpaths(child[i], physpath,
       phypath_size, rsz, is_spare);
   if (ret == EZFS_NOSPC)
    return (ret);
  }
 }

 return (EZFS_POOL_INVALARG);
}
