
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int FIFO_U1 ;
 scalar_t__ VORTEX_FIFO_ADBCTRL ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void vortex_fifo_setadbvalid(vortex_t * vortex, int fifo, int en)
{
 hwwrite(vortex->mmio, VORTEX_FIFO_ADBCTRL + (fifo << 2),
  (hwread(vortex->mmio, VORTEX_FIFO_ADBCTRL + (fifo << 2)) &
   0xffffffef) | ((1 & en) << 4) | FIFO_U1);
}
