
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int multicast_query_timer; scalar_t__ multicast_startup_queries_sent; } ;


 scalar_t__ del_timer (int *) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ try_to_del_timer_sync (int *) ;

__attribute__((used)) static void __br_multicast_enable_port(struct net_bridge_port *port)
{
 port->multicast_startup_queries_sent = 0;

 if (try_to_del_timer_sync(&port->multicast_query_timer) >= 0 ||
     del_timer(&port->multicast_query_timer))
  mod_timer(&port->multicast_query_timer, jiffies);
}
