
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_stat_t ;
typedef size_t uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int VDEV_TYPE_REPLACING ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,int **,size_t*) ;
 scalar_t__ strcmp (char*,int ) ;
 int verify (int) ;

__attribute__((used)) static boolean_t
find_vdev_problem(nvlist_t *vdev, int (*func)(vdev_stat_t *, uint_t),
    boolean_t ignore_replacing)
{
 nvlist_t **child;
 vdev_stat_t *vs;
 uint_t c, vsc, children;







 if (ignore_replacing == B_TRUE) {
  char *type;

  verify(nvlist_lookup_string(vdev, ZPOOL_CONFIG_TYPE,
      &type) == 0);
  if (strcmp(type, VDEV_TYPE_REPLACING) == 0)
   return (B_FALSE);
 }

 if (nvlist_lookup_nvlist_array(vdev, ZPOOL_CONFIG_CHILDREN, &child,
     &children) == 0) {
  for (c = 0; c < children; c++)
   if (find_vdev_problem(child[c], func, ignore_replacing))
    return (B_TRUE);
 } else {
  verify(nvlist_lookup_uint64_array(vdev, ZPOOL_CONFIG_VDEV_STATS,
      (uint64_t **)&vs, &vsc) == 0);

  if (func(vs, vsc) != 0)
   return (B_TRUE);
 }




 if (nvlist_lookup_nvlist_array(vdev, ZPOOL_CONFIG_L2CACHE, &child,
     &children) == 0) {
  for (c = 0; c < children; c++)
   if (find_vdev_problem(child[c], func, ignore_replacing))
    return (B_TRUE);
 }

 return (B_FALSE);
}
