
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct ip_set {struct bitmap_ip* data; } ;
struct bitmap_ip {unsigned long* members; } ;


 unsigned long IPSET_ELEM_UNSET ;
 int IPSET_ERR_EXIST ;
 scalar_t__ ip_set_timeout_test (unsigned long) ;

__attribute__((used)) static int
bitmap_ip_tdel(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 struct bitmap_ip *map = set->data;
 unsigned long *members = map->members;
 u16 id = *(u16 *)value;
 int ret = -IPSET_ERR_EXIST;

 if (ip_set_timeout_test(members[id]))
  ret = 0;

 members[id] = IPSET_ELEM_UNSET;
 return ret;
}
