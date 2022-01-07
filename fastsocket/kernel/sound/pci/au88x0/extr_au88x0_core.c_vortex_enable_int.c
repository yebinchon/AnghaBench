
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int CTRL_IRQ_ENABLE ;
 int VORTEX_CTRL ;
 int VORTEX_IRQ_CTRL ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,int) ;

__attribute__((used)) static void vortex_enable_int(vortex_t * card)
{

 hwwrite(card->mmio, VORTEX_CTRL,
  hwread(card->mmio, VORTEX_CTRL) | CTRL_IRQ_ENABLE);
 hwwrite(card->mmio, VORTEX_IRQ_CTRL,
  (hwread(card->mmio, VORTEX_IRQ_CTRL) & 0xffffefc0) | 0x24);
}
