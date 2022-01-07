
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_ib_connection {int ib_node; TYPE_1__* rds_ibdev; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int spinlock; } ;


 int ib_nodev_conns_lock ;
 int kfree (struct rds_ib_connection*) ;
 int list_del (int *) ;
 int rds_ib_recv_free_caches (struct rds_ib_connection*) ;
 int rdsdebug (char*,struct rds_ib_connection*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void rds_ib_conn_free(void *arg)
{
 struct rds_ib_connection *ic = arg;
 spinlock_t *lock_ptr;

 rdsdebug("ic %p\n", ic);






 lock_ptr = ic->rds_ibdev ? &ic->rds_ibdev->spinlock : &ib_nodev_conns_lock;

 spin_lock_irq(lock_ptr);
 list_del(&ic->ib_node);
 spin_unlock_irq(lock_ptr);

 rds_ib_recv_free_caches(ic);

 kfree(ic);
}
