
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt_secret_timer; } ;
struct net {TYPE_1__ ipv4; } ;


 scalar_t__ ip_rt_secret_interval ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rt_cache_invalidate (struct net*) ;

__attribute__((used)) static void rt_secret_rebuild(unsigned long __net)
{
 struct net *net = (struct net *)__net;
 rt_cache_invalidate(net);
 mod_timer(&net->ipv4.rt_secret_timer, jiffies + ip_rt_secret_interval);
}
