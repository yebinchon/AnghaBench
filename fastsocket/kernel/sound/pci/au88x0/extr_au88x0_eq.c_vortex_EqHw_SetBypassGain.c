
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ this08; } ;
struct TYPE_5__ {TYPE_3__ this04; } ;
struct TYPE_6__ {int mmio; TYPE_1__ eq; } ;
typedef TYPE_2__ vortex_t ;
typedef int u16 ;
typedef TYPE_3__ eqhw_t ;


 int hwwrite (int ,int,int ) ;
 int sign_invert (int ) ;

__attribute__((used)) static void vortex_EqHw_SetBypassGain(vortex_t * vortex, u16 a, u16 b)
{
 eqhw_t *eqhw = &(vortex->eq.this04);
 if (eqhw->this08 == 0) {
  hwwrite(vortex->mmio, 0x2b3d4, a);
  hwwrite(vortex->mmio, 0x2b3ec, b);
 } else {
  hwwrite(vortex->mmio, 0x2b3d4, sign_invert(a));
  hwwrite(vortex->mmio, 0x2b3ec, sign_invert(b));
 }
}
