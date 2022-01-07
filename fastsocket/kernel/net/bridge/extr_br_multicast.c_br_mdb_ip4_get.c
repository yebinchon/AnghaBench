
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_mdb_htable {int dummy; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct TYPE_2__ {int ip4; } ;
struct br_ip {int proto; TYPE_1__ u; } ;
typedef int __be32 ;


 int ETH_P_IP ;
 struct net_bridge_mdb_entry* br_mdb_ip_get (struct net_bridge_mdb_htable*,struct br_ip*) ;
 int htons (int ) ;

__attribute__((used)) static struct net_bridge_mdb_entry *br_mdb_ip4_get(
 struct net_bridge_mdb_htable *mdb, __be32 dst)
{
 struct br_ip br_dst;

 br_dst.u.ip4 = dst;
 br_dst.proto = htons(ETH_P_IP);

 return br_mdb_ip_get(mdb, &br_dst);
}
