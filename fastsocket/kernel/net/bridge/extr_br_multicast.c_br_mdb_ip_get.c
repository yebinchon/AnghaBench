
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_mdb_htable {int dummy; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct br_ip {int dummy; } ;


 struct net_bridge_mdb_entry* __br_mdb_ip_get (struct net_bridge_mdb_htable*,struct br_ip*,int ) ;
 int br_ip_hash (struct net_bridge_mdb_htable*,struct br_ip*) ;

__attribute__((used)) static struct net_bridge_mdb_entry *br_mdb_ip_get(
 struct net_bridge_mdb_htable *mdb, struct br_ip *dst)
{
 if (!mdb)
  return ((void*)0);

 return __br_mdb_ip_get(mdb, dst, br_ip_hash(mdb, dst));
}
