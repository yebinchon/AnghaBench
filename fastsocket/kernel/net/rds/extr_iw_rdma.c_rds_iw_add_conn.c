
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_device {int spinlock; int conn_list; } ;
struct rds_iw_connection {struct rds_iw_device* rds_iwdev; int iw_node; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;


 int BUG_ON (int ) ;
 int iw_nodev_conns ;
 int iw_nodev_conns_lock ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void rds_iw_add_conn(struct rds_iw_device *rds_iwdev, struct rds_connection *conn)
{
 struct rds_iw_connection *ic = conn->c_transport_data;


 spin_lock_irq(&iw_nodev_conns_lock);
 BUG_ON(list_empty(&iw_nodev_conns));
 BUG_ON(list_empty(&ic->iw_node));
 list_del(&ic->iw_node);

 spin_lock(&rds_iwdev->spinlock);
 list_add_tail(&ic->iw_node, &rds_iwdev->conn_list);
 spin_unlock(&rds_iwdev->spinlock);
 spin_unlock_irq(&iw_nodev_conns_lock);

 ic->rds_iwdev = rds_iwdev;
}
