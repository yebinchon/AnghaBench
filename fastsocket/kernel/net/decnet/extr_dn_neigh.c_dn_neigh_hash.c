
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {int hash_rnd; } ;


 TYPE_1__ dn_neigh_table ;
 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static u32 dn_neigh_hash(const void *pkey, const struct net_device *dev)
{
 return jhash_2words(*(__u16 *)pkey, 0, dn_neigh_table.hash_rnd);
}
