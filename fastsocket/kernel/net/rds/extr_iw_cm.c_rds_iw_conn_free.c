
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_iw_connection {int iw_node; TYPE_1__* rds_iwdev; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int spinlock; } ;


 int iw_nodev_conns_lock ;
 int kfree (struct rds_iw_connection*) ;
 int list_del (int *) ;
 int rdsdebug (char*,struct rds_iw_connection*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void rds_iw_conn_free(void *arg)
{
 struct rds_iw_connection *ic = arg;
 spinlock_t *lock_ptr;

 rdsdebug("ic %p\n", ic);






 lock_ptr = ic->rds_iwdev ? &ic->rds_iwdev->spinlock : &iw_nodev_conns_lock;

 spin_lock_irq(lock_ptr);
 list_del(&ic->iw_node);
 spin_unlock_irq(lock_ptr);

 kfree(ic);
}
