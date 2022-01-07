
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {int hash_rnd; } ;


 TYPE_1__ arp_tbl ;
 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static u32 arp_hash(const void *pkey, const struct net_device *dev)
{
 return jhash_2words(*(u32 *)pkey, dev->ifindex, arp_tbl.hash_rnd);
}
