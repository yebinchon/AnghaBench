
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_device {int spinlock; } ;
struct rds_iw_connection {int * rds_iwdev; int i_cm_id; int iw_node; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;


 int BUG_ON (int ) ;
 int iw_nodev_conns ;
 int iw_nodev_conns_lock ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int rds_iw_remove_cm_id (int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void rds_iw_remove_conn(struct rds_iw_device *rds_iwdev, struct rds_connection *conn)
{
 struct rds_iw_connection *ic = conn->c_transport_data;


 spin_lock(&iw_nodev_conns_lock);

 spin_lock_irq(&rds_iwdev->spinlock);
 BUG_ON(list_empty(&ic->iw_node));
 list_del(&ic->iw_node);
 spin_unlock_irq(&rds_iwdev->spinlock);

 list_add_tail(&ic->iw_node, &iw_nodev_conns);

 spin_unlock(&iw_nodev_conns_lock);

 rds_iw_remove_cm_id(ic->rds_iwdev, ic->i_cm_id);
 ic->rds_iwdev = ((void*)0);
}
