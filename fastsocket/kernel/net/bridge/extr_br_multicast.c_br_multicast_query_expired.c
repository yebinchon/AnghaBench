
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ multicast_startup_queries_sent; scalar_t__ multicast_startup_query_count; int multicast_lock; } ;


 int br_multicast_send_query (struct net_bridge*,int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_multicast_query_expired(unsigned long data)
{
 struct net_bridge *br = (void *)data;

 spin_lock(&br->multicast_lock);
 if (br->multicast_startup_queries_sent <
     br->multicast_startup_query_count)
  br->multicast_startup_queries_sent++;

 br_multicast_send_query(br, ((void*)0), br->multicast_startup_queries_sent);

 spin_unlock(&br->multicast_lock);
}
