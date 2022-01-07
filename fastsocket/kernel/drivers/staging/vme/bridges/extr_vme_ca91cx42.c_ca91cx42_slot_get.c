
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int CA91CX42_VCSR_BS_SLOT_M ;
 scalar_t__ VCSR_BS ;
 TYPE_1__* ca91cx42_bridge ;
 int ioread32 (scalar_t__) ;

int ca91cx42_slot_get(void)
{
 u32 slot = 0;

 slot = ioread32(ca91cx42_bridge->base + VCSR_BS);
 slot = ((slot & CA91CX42_VCSR_BS_SLOT_M) >> 27);
 return (int)slot;

}
