
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
typedef int u32 ;


 int WT_DSREG (int) ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,int) ;

__attribute__((used)) static void vortex_wt_setdsout(vortex_t * vortex, u32 wt, int en)
{
 int temp;


 temp = hwread(vortex->mmio, WT_DSREG((wt >= 0x20) ? 1 : 0));
 if (en)
  temp |= (1 << (wt & 0x1f));
 else
  temp &= (1 << ~(wt & 0x1f));
 hwwrite(vortex->mmio, WT_DSREG((wt >= 0x20) ? 1 : 0), temp);
}
