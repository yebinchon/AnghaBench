
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_work_ring {int dummy; } ;


 int __rds_ib_ring_empty (struct rds_ib_work_ring*) ;

int rds_ib_ring_empty(struct rds_ib_work_ring *ring)
{
 return __rds_ib_ring_empty(ring);
}
