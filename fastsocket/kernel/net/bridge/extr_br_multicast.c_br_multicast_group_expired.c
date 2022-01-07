
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_mdb_htable {size_t ver; int size; } ;
struct net_bridge_mdb_entry {int mglist; int rcu; int query_timer; int * hlist; scalar_t__ ports; int timer; struct net_bridge* br; } ;
struct net_bridge {int multicast_lock; struct net_bridge_mdb_htable* mdb; int dev; } ;


 int br_multicast_free_group ;
 int call_rcu_bh (int *,int ) ;
 int del_timer (int *) ;
 int hlist_del_rcu (int *) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_group_expired(unsigned long data)
{
 struct net_bridge_mdb_entry *mp = (void *)data;
 struct net_bridge *br = mp->br;
 struct net_bridge_mdb_htable *mdb;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) || timer_pending(&mp->timer))
  goto out;

 mp->mglist = 0;

 if (mp->ports)
  goto out;

 mdb = br->mdb;
 hlist_del_rcu(&mp->hlist[mdb->ver]);
 mdb->size--;

 del_timer(&mp->query_timer);
 call_rcu_bh(&mp->rcu, br_multicast_free_group);

out:
 spin_unlock(&br->multicast_lock);
}
