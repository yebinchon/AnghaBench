
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {scalar_t__ state; scalar_t__ multicast_startup_queries_sent; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_startup_query_count; int multicast_lock; } ;


 scalar_t__ BR_STATE_BLOCKING ;
 scalar_t__ BR_STATE_DISABLED ;
 int br_multicast_send_query (struct net_bridge*,struct net_bridge_port*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_multicast_port_query_expired(unsigned long data)
{
 struct net_bridge_port *port = (void *)data;
 struct net_bridge *br = port->br;

 spin_lock(&br->multicast_lock);
 if (port->state == BR_STATE_DISABLED ||
     port->state == BR_STATE_BLOCKING)
  goto out;

 if (port->multicast_startup_queries_sent <
     br->multicast_startup_query_count)
  port->multicast_startup_queries_sent++;

 br_multicast_send_query(port->br, port,
    port->multicast_startup_queries_sent);

out:
 spin_unlock(&br->multicast_lock);
}
