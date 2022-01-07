
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port_group {int rcu; int query_timer; int timer; int mglist; struct net_bridge_port_group* next; int addr; } ;
struct net_bridge_mdb_htable {int dummy; } ;
struct net_bridge_mdb_entry {int timer; scalar_t__ timer_armed; int mglist; struct net_bridge_port_group* ports; } ;
struct net_bridge {int dev; struct net_bridge_mdb_htable* mdb; } ;


 scalar_t__ WARN_ON (int) ;
 struct net_bridge_mdb_entry* br_mdb_ip_get (struct net_bridge_mdb_htable*,int *) ;
 int br_multicast_free_pg ;
 int call_rcu_bh (int *,int ) ;
 int del_timer (int *) ;
 int hlist_del_init (int *) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static void br_multicast_del_pg(struct net_bridge *br,
    struct net_bridge_port_group *pg)
{
 struct net_bridge_mdb_htable *mdb = br->mdb;
 struct net_bridge_mdb_entry *mp;
 struct net_bridge_port_group *p;
 struct net_bridge_port_group **pp;

 mp = br_mdb_ip_get(mdb, &pg->addr);
 if (WARN_ON(!mp))
  return;

 for (pp = &mp->ports; (p = *pp); pp = &p->next) {
  if (p != pg)
   continue;

  *pp = p->next;
  hlist_del_init(&p->mglist);
  del_timer(&p->timer);
  del_timer(&p->query_timer);
  call_rcu_bh(&p->rcu, br_multicast_free_pg);

  if (!mp->ports && !mp->mglist && mp->timer_armed &&
      netif_running(br->dev))
   mod_timer(&mp->timer, jiffies);

  return;
 }

 WARN_ON(1);
}
