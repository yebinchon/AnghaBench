
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_bridge_mdb_htable {int max; int secret; } ;
typedef scalar_t__ __be32 ;


 int jhash_1word (int ,int ) ;

__attribute__((used)) static inline int __br_ip4_hash(struct net_bridge_mdb_htable *mdb, __be32 ip)
{
 return jhash_1word(mdb->secret, (u32)ip) & (mdb->max - 1);
}
