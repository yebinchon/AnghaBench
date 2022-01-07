
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ TSI148_LCSR_VSTAT ;
 int TSI148_LCSR_VSTAT_GA_M ;
 int ioread32be (scalar_t__) ;
 TYPE_1__* tsi148_bridge ;

int tsi148_slot_get(void)
{
        u32 slot = 0;

 slot = ioread32be(tsi148_bridge->base + TSI148_LCSR_VSTAT);
 slot = slot & TSI148_LCSR_VSTAT_GA_M;
 return (int)slot;
}
