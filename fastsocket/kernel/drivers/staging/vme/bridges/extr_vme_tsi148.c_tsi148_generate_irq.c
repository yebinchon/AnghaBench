
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ TSI148_LCSR_VICR ;
 int* TSI148_LCSR_VICR_IRQL ;
 int TSI148_LCSR_VICR_STID_M ;
 int iack_queue ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* tsi148_bridge ;
 int tsi148_iack_received () ;
 int vme_int ;
 int wait_event_interruptible (int ,int ) ;

int tsi148_generate_irq(int level, int statid)
{
 u32 tmp;

 mutex_lock(&(vme_int));


 tmp = ioread32be(tsi148_bridge->base + TSI148_LCSR_VICR);


 tmp = (tmp & ~TSI148_LCSR_VICR_STID_M) |
  (statid & TSI148_LCSR_VICR_STID_M);
 iowrite32be(tmp, tsi148_bridge->base + TSI148_LCSR_VICR);


 tmp = tmp | TSI148_LCSR_VICR_IRQL[level];
 iowrite32be(tmp, tsi148_bridge->base + TSI148_LCSR_VICR);


 wait_event_interruptible(iack_queue, tsi148_iack_received());

 mutex_unlock(&(vme_int));

 return 0;
}
