
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmac_elem {int match; int ether; } ;
struct ipmac {int ether; int id; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int dummy; } ;


 int ETH_ALEN ;
 int IPSET_ERR_EXIST ;



 struct ipmac_elem* bitmap_ipmac_elem (struct bitmap_ipmac*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
bitmap_ipmac_add(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 struct bitmap_ipmac *map = set->data;
 const struct ipmac *data = value;
 struct ipmac_elem *elem = bitmap_ipmac_elem(map, data->id);

 switch (elem->match) {
 case 128:
  if (!data->ether)

   return -IPSET_ERR_EXIST;

  memcpy(elem->ether, data->ether, ETH_ALEN);
  elem->match = 129;
  break;
 case 129:
  return -IPSET_ERR_EXIST;
 case 130:
  if (data->ether) {
   memcpy(elem->ether, data->ether, ETH_ALEN);
   elem->match = 129;
  } else
   elem->match = 128;
 }

 return 0;
}
