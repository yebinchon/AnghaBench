
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ** xtalk_state_t ;
typedef int * xtalk_instate_t ;
struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int hwwrite (int ,int,int ) ;

__attribute__((used)) static void
vortex_XtalkHw_SetLeftXTStates(vortex_t * vortex,
          xtalk_instate_t const arg_0,
          xtalk_state_t const coefs)
{
 int i;

 for (i = 0; i < 5; i++) {
  hwwrite(vortex->mmio, 0x2437C + i * 0x24, coefs[i][0]);
  hwwrite(vortex->mmio, 0x24380 + i * 0x24, coefs[i][1]);
  hwwrite(vortex->mmio, 0x24384 + i * 0x24, coefs[i][2]);
  hwwrite(vortex->mmio, 0x24388 + i * 0x24, coefs[i][3]);
 }
 hwwrite(vortex->mmio, 0x24518 + i * 0x24, arg_0[0]);
 hwwrite(vortex->mmio, 0x2451C + i * 0x24, arg_0[1]);
 hwwrite(vortex->mmio, 0x24520 + i * 0x24, arg_0[2]);
 hwwrite(vortex->mmio, 0x24524 + i * 0x24, arg_0[3]);
}
