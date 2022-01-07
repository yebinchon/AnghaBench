
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
typedef scalar_t__ u32 ;


 scalar_t__ VORTEX_SRC_CHNBASE ;
 scalar_t__ VORTEX_SRC_RTBASE ;
 scalar_t__ VORTEX_SRC_SOURCESIZE ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void vortex_srcblock_init(vortex_t * vortex)
{
 u32 addr;
 int x;
 hwwrite(vortex->mmio, VORTEX_SRC_SOURCESIZE, 0x1ff);







 addr = VORTEX_SRC_RTBASE + 0x3c;
 for (x = 0xf; x >= 0; x--) {
  hwwrite(vortex->mmio, addr, 0);
  addr -= 4;
 }


 addr = VORTEX_SRC_CHNBASE + 0x54;
 for (x = 0x15; x >= 0; x--) {
  hwwrite(vortex->mmio, addr, 0);
  addr -= 4;
 }
}
