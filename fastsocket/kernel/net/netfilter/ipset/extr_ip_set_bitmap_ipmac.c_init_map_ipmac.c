
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ip_set {int family; struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int dsize; int first_ip; int last_ip; int timeout; int members; } ;


 int AF_INET ;
 int IPSET_NO_TIMEOUT ;
 int ip_set_alloc (int) ;

__attribute__((used)) static bool
init_map_ipmac(struct ip_set *set, struct bitmap_ipmac *map,
        u32 first_ip, u32 last_ip)
{
 map->members = ip_set_alloc((last_ip - first_ip + 1) * map->dsize);
 if (!map->members)
  return 0;
 map->first_ip = first_ip;
 map->last_ip = last_ip;
 map->timeout = IPSET_NO_TIMEOUT;

 set->data = map;
 set->family = AF_INET;

 return 1;
}
