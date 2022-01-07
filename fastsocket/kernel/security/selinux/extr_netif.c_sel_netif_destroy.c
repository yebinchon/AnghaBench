
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sel_netif {int rcu_head; int list; } ;


 int call_rcu (int *,int ) ;
 int list_del_rcu (int *) ;
 int sel_netif_free ;
 int sel_netif_total ;

__attribute__((used)) static void sel_netif_destroy(struct sel_netif *netif)
{
 list_del_rcu(&netif->list);
 sel_netif_total--;
 call_rcu(&netif->rcu_head, sel_netif_free);
}
