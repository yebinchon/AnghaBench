
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rds_iw_work_ring {int w_free_ptr; } ;



u32 rds_iw_ring_oldest(struct rds_iw_work_ring *ring)
{
 return ring->w_free_ptr;
}
