
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int expires; } ;
struct net_bridge_port_group {TYPE_1__ timer; int mglist; struct net_bridge_port* port; struct net_bridge_port_group* next; } ;
struct net_bridge_port {scalar_t__ state; TYPE_1__ multicast_query_timer; } ;
struct net_bridge_mdb_htable {int dummy; } ;
struct net_bridge_mdb_entry {TYPE_1__ query_timer; scalar_t__ queries_sent; TYPE_1__ timer; scalar_t__ timer_armed; scalar_t__ mglist; struct net_bridge_port_group* ports; int addr; } ;
struct net_bridge {unsigned long multicast_last_member_count; unsigned long multicast_last_member_interval; int multicast_lock; TYPE_1__ multicast_query_timer; TYPE_1__ multicast_querier_timer; scalar_t__ multicast_querier; struct net_bridge_mdb_htable* mdb; int dev; } ;
struct br_ip {int dummy; } ;


 scalar_t__ BR_STATE_DISABLED ;
 int __br_multicast_send_query (struct net_bridge*,struct net_bridge_port*,int *) ;
 struct net_bridge_mdb_entry* br_mdb_ip_get (struct net_bridge_mdb_htable*,struct br_ip*) ;
 int hlist_unhashed (int *) ;
 unsigned long jiffies ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int time_after (int ,unsigned long) ;
 scalar_t__ timer_pending (TYPE_1__*) ;
 scalar_t__ try_to_del_timer_sync (TYPE_1__*) ;

__attribute__((used)) static void br_multicast_leave_group(struct net_bridge *br,
         struct net_bridge_port *port,
         struct br_ip *group)
{
 struct net_bridge_mdb_htable *mdb;
 struct net_bridge_mdb_entry *mp;
 struct net_bridge_port_group *p;
 unsigned long now;
 unsigned long time;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) ||
     (port && port->state == BR_STATE_DISABLED) ||
     timer_pending(&br->multicast_querier_timer))
  goto out;

 mdb = br->mdb;
 mp = br_mdb_ip_get(mdb, group);
 if (!mp)
  goto out;

 if (br->multicast_querier &&
     !timer_pending(&br->multicast_querier_timer)) {
  __br_multicast_send_query(br, port, &mp->addr);

  time = jiffies + br->multicast_last_member_count *
     br->multicast_last_member_interval;
  mod_timer(port ? &port->multicast_query_timer :
     &br->multicast_query_timer, time);

  for (p = mp->ports; p; p = p->next) {
   if (p->port != port)
    continue;

   if (!hlist_unhashed(&p->mglist) &&
       (timer_pending(&p->timer) ?
        time_after(p->timer.expires, time) :
        try_to_del_timer_sync(&p->timer) >= 0)) {
    mod_timer(&p->timer, time);
   }

   break;
  }
 }

 now = jiffies;
 time = now + br->multicast_last_member_count *
       br->multicast_last_member_interval;

 if (!port) {
  if (mp->mglist && mp->timer_armed &&
      (timer_pending(&mp->timer) ?
       time_after(mp->timer.expires, time) :
       try_to_del_timer_sync(&mp->timer) >= 0)) {
   mod_timer(&mp->timer, time);

   mp->queries_sent = 0;
   mod_timer(&mp->query_timer, now);
  }
 }

out:
 spin_unlock(&br->multicast_lock);
}
