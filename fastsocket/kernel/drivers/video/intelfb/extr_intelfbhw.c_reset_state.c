
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_info {int dummy; } ;


 int DBG_MSG (char*) ;
 int DO_RING_IDLE () ;
 scalar_t__ FENCE ;
 int FENCE_NUM ;
 int INREG (scalar_t__) ;
 int OUTREG (scalar_t__,int ) ;
 scalar_t__ PRI_RING_HEAD ;
 scalar_t__ PRI_RING_LENGTH ;
 scalar_t__ PRI_RING_START ;
 scalar_t__ PRI_RING_TAIL ;
 int RING_ENABLE ;
 int intelfbhw_do_sync (struct intelfb_info*) ;
 int refresh_ring (struct intelfb_info*) ;

__attribute__((used)) static void reset_state(struct intelfb_info *dinfo)
{
 int i;
 u32 tmp;





 for (i = 0; i < FENCE_NUM; i++)
  OUTREG(FENCE + (i << 2), 0);


 tmp = INREG(PRI_RING_LENGTH);
 if (tmp & RING_ENABLE) {



  refresh_ring(dinfo);
  intelfbhw_do_sync(dinfo);
  DO_RING_IDLE();
 }

 OUTREG(PRI_RING_LENGTH, 0);
 OUTREG(PRI_RING_HEAD, 0);
 OUTREG(PRI_RING_TAIL, 0);
 OUTREG(PRI_RING_START, 0);
}
