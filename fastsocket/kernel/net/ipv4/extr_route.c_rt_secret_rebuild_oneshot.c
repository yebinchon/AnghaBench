
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int expires; } ;
struct TYPE_4__ {TYPE_2__ rt_secret_timer; } ;
struct net {TYPE_1__ ipv4; } ;


 int add_timer (TYPE_2__*) ;
 int del_timer_sync (TYPE_2__*) ;
 scalar_t__ ip_rt_secret_interval ;
 int rt_cache_invalidate (struct net*) ;

__attribute__((used)) static void rt_secret_rebuild_oneshot(struct net *net)
{
 del_timer_sync(&net->ipv4.rt_secret_timer);
 rt_cache_invalidate(net);
 if (ip_rt_secret_interval) {
  net->ipv4.rt_secret_timer.expires += ip_rt_secret_interval;
  add_timer(&net->ipv4.rt_secret_timer);
 }
}
