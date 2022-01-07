
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neigh_table {int lock; } ;


 int neigh_flush_dev (struct neigh_table*,struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void neigh_changeaddr(struct neigh_table *tbl, struct net_device *dev)
{
 write_lock_bh(&tbl->lock);
 neigh_flush_dev(tbl, dev);
 write_unlock_bh(&tbl->lock);
}
