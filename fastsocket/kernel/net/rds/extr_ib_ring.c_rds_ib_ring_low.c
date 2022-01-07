
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_work_ring {int w_nr; } ;


 int __rds_ib_ring_used (struct rds_ib_work_ring*) ;

int rds_ib_ring_low(struct rds_ib_work_ring *ring)
{
 return __rds_ib_ring_used(ring) <= (ring->w_nr >> 1);
}
