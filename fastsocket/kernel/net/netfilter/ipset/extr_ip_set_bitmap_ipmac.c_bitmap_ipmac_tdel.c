
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmac_telem {scalar_t__ match; } ;
struct ipmac {int id; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int dummy; } ;


 int IPSET_ERR_EXIST ;
 scalar_t__ MAC_EMPTY ;
 scalar_t__ bitmap_expired (struct bitmap_ipmac*,int ) ;
 struct ipmac_telem* bitmap_ipmac_elem (struct bitmap_ipmac*,int ) ;

__attribute__((used)) static int
bitmap_ipmac_tdel(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 struct bitmap_ipmac *map = set->data;
 const struct ipmac *data = value;
 struct ipmac_telem *elem = bitmap_ipmac_elem(map, data->id);

 if (elem->match == MAC_EMPTY || bitmap_expired(map, data->id))
  return -IPSET_ERR_EXIST;

 elem->match = MAC_EMPTY;

 return 0;
}
