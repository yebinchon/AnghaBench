
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int multicast_query_timer; scalar_t__ multicast_disabled; scalar_t__ multicast_startup_queries_sent; } ;


 int jiffies ;
 int mod_timer (int *,int ) ;

void br_multicast_open(struct net_bridge *br)
{
 br->multicast_startup_queries_sent = 0;

 if (br->multicast_disabled)
  return;

 mod_timer(&br->multicast_query_timer, jiffies);
}
