
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sel_netif {int dummy; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sel_netif_destroy (struct sel_netif*) ;
 struct sel_netif* sel_netif_find (int) ;
 int sel_netif_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sel_netif_kill(int ifindex)
{
 struct sel_netif *netif;

 rcu_read_lock();
 spin_lock_bh(&sel_netif_lock);
 netif = sel_netif_find(ifindex);
 if (netif)
  sel_netif_destroy(netif);
 spin_unlock_bh(&sel_netif_lock);
 rcu_read_unlock();
}
