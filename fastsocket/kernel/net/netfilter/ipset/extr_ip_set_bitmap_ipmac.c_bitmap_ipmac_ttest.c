
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmac_elem {int match; int ether; } ;
struct ipmac {int id; int * ether; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int dummy; } ;


 int EAGAIN ;


 int bitmap_expired (struct bitmap_ipmac const*,int ) ;
 struct ipmac_elem* bitmap_ipmac_elem (struct bitmap_ipmac const*,int ) ;
 int compare_ether_addr (int *,int ) ;

__attribute__((used)) static int
bitmap_ipmac_ttest(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 const struct bitmap_ipmac *map = set->data;
 const struct ipmac *data = value;
 const struct ipmac_elem *elem = bitmap_ipmac_elem(map, data->id);

 switch (elem->match) {
 case 128:

  return -EAGAIN;
 case 129:
  return (data->ether == ((void*)0) ||
   compare_ether_addr(data->ether, elem->ether) == 0) &&
         !bitmap_expired(map, data->id);
 }
 return 0;
}
