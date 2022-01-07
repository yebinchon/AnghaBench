
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rds_ib_work_ring {int w_nr; } ;


 int memset (struct rds_ib_work_ring*,int ,int) ;
 int rdsdebug (char*,struct rds_ib_work_ring*,int ) ;

void rds_ib_ring_init(struct rds_ib_work_ring *ring, u32 nr)
{
 memset(ring, 0, sizeof(*ring));
 ring->w_nr = nr;
 rdsdebug("ring %p nr %u\n", ring, ring->w_nr);
}
