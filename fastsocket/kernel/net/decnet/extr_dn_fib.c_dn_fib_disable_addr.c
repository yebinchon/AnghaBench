
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dn_fib_flush () ;
 scalar_t__ dn_fib_sync_down (int ,struct net_device*,int) ;
 int dn_neigh_table ;
 int dn_rt_cache_flush (int ) ;
 int neigh_ifdown (int *,struct net_device*) ;

__attribute__((used)) static void dn_fib_disable_addr(struct net_device *dev, int force)
{
 if (dn_fib_sync_down(0, dev, force))
  dn_fib_flush();
 dn_rt_cache_flush(0);
 neigh_ifdown(&dn_neigh_table, dev);
}
