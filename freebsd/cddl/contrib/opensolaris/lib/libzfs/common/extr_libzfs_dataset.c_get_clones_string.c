
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int strlcat (char*,char*,size_t) ;
 int * zfs_get_clones_nvl (int *) ;

__attribute__((used)) static int
get_clones_string(zfs_handle_t *zhp, char *propbuf, size_t proplen)
{
 nvlist_t *value;
 nvpair_t *pair;

 value = zfs_get_clones_nvl(zhp);
 if (value == ((void*)0))
  return (-1);

 propbuf[0] = '\0';
 for (pair = nvlist_next_nvpair(value, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(value, pair)) {
  if (propbuf[0] != '\0')
   (void) strlcat(propbuf, ",", proplen);
  (void) strlcat(propbuf, nvpair_name(pair), proplen);
 }

 return (0);
}
