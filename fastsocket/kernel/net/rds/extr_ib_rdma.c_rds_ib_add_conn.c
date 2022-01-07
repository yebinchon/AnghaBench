
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int refcount; int spinlock; int conn_list; } ;
struct rds_ib_connection {struct rds_ib_device* rds_ibdev; int ib_node; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;


 int BUG_ON (int ) ;
 int atomic_inc (int *) ;
 int ib_nodev_conns ;
 int ib_nodev_conns_lock ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void rds_ib_add_conn(struct rds_ib_device *rds_ibdev, struct rds_connection *conn)
{
 struct rds_ib_connection *ic = conn->c_transport_data;


 spin_lock_irq(&ib_nodev_conns_lock);
 BUG_ON(list_empty(&ib_nodev_conns));
 BUG_ON(list_empty(&ic->ib_node));
 list_del(&ic->ib_node);

 spin_lock(&rds_ibdev->spinlock);
 list_add_tail(&ic->ib_node, &rds_ibdev->conn_list);
 spin_unlock(&rds_ibdev->spinlock);
 spin_unlock_irq(&ib_nodev_conns_lock);

 ic->rds_ibdev = rds_ibdev;
 atomic_inc(&rds_ibdev->refcount);
}
