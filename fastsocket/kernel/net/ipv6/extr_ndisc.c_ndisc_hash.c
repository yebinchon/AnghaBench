
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int ifindex; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int hash_rnd; } ;


 int jhash_2words (int,int ,int ) ;
 TYPE_1__ nd_tbl ;

__attribute__((used)) static u32 ndisc_hash(const void *pkey, const struct net_device *dev)
{
 const u32 *p32 = pkey;
 u32 addr_hash, i;

 addr_hash = 0;
 for (i = 0; i < (sizeof(struct in6_addr) / sizeof(u32)); i++)
  addr_hash ^= *p32++;

 return jhash_2words(addr_hash, dev->ifindex, nd_tbl.hash_rnd);
}
