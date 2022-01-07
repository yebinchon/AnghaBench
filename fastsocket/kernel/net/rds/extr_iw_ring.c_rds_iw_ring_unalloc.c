
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rds_iw_work_ring {int w_alloc_ptr; int w_nr; int w_alloc_ctr; } ;



void rds_iw_ring_unalloc(struct rds_iw_work_ring *ring, u32 val)
{
 ring->w_alloc_ptr = (ring->w_alloc_ptr - val) % ring->w_nr;
 ring->w_alloc_ctr -= val;
}
