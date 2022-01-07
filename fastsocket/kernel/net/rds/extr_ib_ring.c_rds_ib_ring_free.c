
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rds_ib_work_ring {int w_free_ptr; int w_nr; int w_free_ctr; } ;


 scalar_t__ __rds_ib_ring_empty (struct rds_ib_work_ring*) ;
 int atomic_add (int,int *) ;
 int rds_ib_ring_empty_wait ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void rds_ib_ring_free(struct rds_ib_work_ring *ring, u32 val)
{
 ring->w_free_ptr = (ring->w_free_ptr + val) % ring->w_nr;
 atomic_add(val, &ring->w_free_ctr);

 if (__rds_ib_ring_empty(ring) &&
     waitqueue_active(&rds_ib_ring_empty_wait))
  wake_up(&rds_ib_ring_empty_wait);
}
