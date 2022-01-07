
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_mdb_entry {scalar_t__ queries_sent; int mglist; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_last_member_count; int multicast_lock; int dev; } ;


 int br_multicast_send_group_query (struct net_bridge_mdb_entry*) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_multicast_group_query_expired(unsigned long data)
{
 struct net_bridge_mdb_entry *mp = (void *)data;
 struct net_bridge *br = mp->br;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) || !mp->mglist ||
     mp->queries_sent >= br->multicast_last_member_count)
  goto out;

 br_multicast_send_group_query(mp);

out:
 spin_unlock(&br->multicast_lock);
}
