
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmac_telem {int match; int timeout; int ether; } ;
struct ipmac {int ether; int id; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int timeout; } ;


 int ETH_ALEN ;
 int IPSET_ERR_EXIST ;
 int IPSET_FLAG_EXIST ;



 int bitmap_expired (struct bitmap_ipmac*,int ) ;
 struct ipmac_telem* bitmap_ipmac_elem (struct bitmap_ipmac*,int ) ;
 int ip_set_timeout_set (int) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
bitmap_ipmac_tadd(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 struct bitmap_ipmac *map = set->data;
 const struct ipmac *data = value;
 struct ipmac_telem *elem = bitmap_ipmac_elem(map, data->id);
 bool flag_exist = flags & IPSET_FLAG_EXIST;

 switch (elem->match) {
 case 128:
  if (!(data->ether || flag_exist))

   return -IPSET_ERR_EXIST;

  memcpy(elem->ether, data->ether, ETH_ALEN);
  elem->match = 129;
  if (timeout == map->timeout)

   timeout = elem->timeout;
  elem->timeout = ip_set_timeout_set(timeout);
  break;
 case 129:
  if (!(bitmap_expired(map, data->id) || flag_exist))
   return -IPSET_ERR_EXIST;

 case 130:
  if (data->ether) {
   memcpy(elem->ether, data->ether, ETH_ALEN);
   elem->match = 129;
  } else
   elem->match = 128;




  elem->timeout = data->ether ? ip_set_timeout_set(timeout)
         : timeout;
  break;
 }

 return 0;
}
