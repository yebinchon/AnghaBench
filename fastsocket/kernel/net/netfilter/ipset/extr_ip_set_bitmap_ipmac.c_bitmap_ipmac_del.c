
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmac_elem {scalar_t__ match; } ;
struct ipmac {int id; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int dummy; } ;


 int IPSET_ERR_EXIST ;
 scalar_t__ MAC_EMPTY ;
 struct ipmac_elem* bitmap_ipmac_elem (struct bitmap_ipmac*,int ) ;

__attribute__((used)) static int
bitmap_ipmac_del(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 struct bitmap_ipmac *map = set->data;
 const struct ipmac *data = value;
 struct ipmac_elem *elem = bitmap_ipmac_elem(map, data->id);

 if (elem->match == MAC_EMPTY)
  return -IPSET_ERR_EXIST;

 elem->match = MAC_EMPTY;

 return 0;
}
