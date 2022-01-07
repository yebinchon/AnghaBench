
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {scalar_t__ map_data; } ;
typedef TYPE_1__ mnt_map ;
typedef int ALD ;


 int ENOENT ;
 scalar_t__ amu_ldap_rebind (int *) ;
 int dlog (char*) ;
 scalar_t__ get_ldap_timestamp (int *,char*,int *) ;

int
amu_ldap_mtime(mnt_map *m, char *map, time_t *ts)
{
  ALD *aldh = (ALD *) (m->map_data);

  if (aldh == ((void*)0)) {
    dlog("LDAP panic: unable to find map data\n");
    return (ENOENT);
  }
  if (amu_ldap_rebind(aldh)) {
    return (ENOENT);
  }
  if (get_ldap_timestamp(aldh, map, ts)) {
    return (ENOENT);
  }
  return (0);
}
