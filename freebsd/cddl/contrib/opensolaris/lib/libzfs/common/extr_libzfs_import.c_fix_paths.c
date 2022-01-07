
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_3__ {scalar_t__ ne_guid; char* ne_name; struct TYPE_3__* ne_next; } ;
typedef TYPE_1__ name_entry_t ;


 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_DEVID ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_PATH ;
 int devid_str_free (char*) ;
 char* get_devid (char*) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int nvlist_remove_all (int *,int ) ;
 int strlen (char*) ;
 int verify (int) ;

__attribute__((used)) static int
fix_paths(nvlist_t *nv, name_entry_t *names)
{
 nvlist_t **child;
 uint_t c, children;
 uint64_t guid;
 name_entry_t *ne, *best;
 char *path, *devid;
 int matched;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   if (fix_paths(child[c], names) != 0)
    return (-1);
  return (0);
 }
 verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID, &guid) == 0);
 if (nvlist_lookup_string(nv, ZPOOL_CONFIG_PATH, &path) != 0)
  path = ((void*)0);

 matched = 0;
 best = ((void*)0);
 for (ne = names; ne != ((void*)0); ne = ne->ne_next) {
  if (ne->ne_guid == guid) {
   const char *src, *dst;
   int count;

   if (path == ((void*)0)) {
    best = ne;
    break;
   }

   src = ne->ne_name + strlen(ne->ne_name) - 1;
   dst = path + strlen(path) - 1;
   for (count = 0; src >= ne->ne_name && dst >= path;
       src--, dst--, count++)
    if (*src != *dst)
     break;





   if (count > matched || best == ((void*)0)) {
    best = ne;
    matched = count;
   }
  }
 }

 if (best == ((void*)0))
  return (0);

 if (nvlist_add_string(nv, ZPOOL_CONFIG_PATH, best->ne_name) != 0)
  return (-1);

 if ((devid = get_devid(best->ne_name)) == ((void*)0)) {
  (void) nvlist_remove_all(nv, ZPOOL_CONFIG_DEVID);
 } else {
  if (nvlist_add_string(nv, ZPOOL_CONFIG_DEVID, devid) != 0) {
   devid_str_free(devid);
   return (-1);
  }
  devid_str_free(devid);
 }

 return (0);
}
