
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr_pool {int free_pinned; } ;
struct rds_ib_mr {unsigned int sg_len; struct rds_ib_device* device; } ;
struct rds_ib_device {struct rds_ib_mr_pool* mr_pool; } ;


 int __rds_ib_teardown_mr (struct rds_ib_mr*) ;
 int atomic_sub (unsigned int,int *) ;

__attribute__((used)) static void rds_ib_teardown_mr(struct rds_ib_mr *ibmr)
{
 unsigned int pinned = ibmr->sg_len;

 __rds_ib_teardown_mr(ibmr);
 if (pinned) {
  struct rds_ib_device *rds_ibdev = ibmr->device;
  struct rds_ib_mr_pool *pool = rds_ibdev->mr_pool;

  atomic_sub(pinned, &pool->free_pinned);
 }
}
