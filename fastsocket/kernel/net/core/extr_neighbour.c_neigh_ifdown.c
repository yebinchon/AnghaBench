
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neigh_table {int proxy_queue; int proxy_timer; int lock; } ;


 int del_timer_sync (int *) ;
 int neigh_flush_dev (struct neigh_table*,struct net_device*) ;
 int pneigh_ifdown (struct neigh_table*,struct net_device*) ;
 int pneigh_queue_purge (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int neigh_ifdown(struct neigh_table *tbl, struct net_device *dev)
{
 write_lock_bh(&tbl->lock);
 neigh_flush_dev(tbl, dev);
 pneigh_ifdown(tbl, dev);
 write_unlock_bh(&tbl->lock);

 del_timer_sync(&tbl->proxy_timer);
 pneigh_queue_purge(&tbl->proxy_queue);
 return 0;
}
