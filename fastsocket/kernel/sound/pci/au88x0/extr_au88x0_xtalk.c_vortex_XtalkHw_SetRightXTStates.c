
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
vortex_XtalkHw_SetRightXTStates(vortex_t * vortex,
    xtalk_instate_t const arg_0,
    xtalk_state_t const coefs)
{
 int i;

 for (i = 0; i < 5; i++) {
  hwwrite(vortex->mmio, 0x24430 + i * 0x24, coefs[i][0]);
  hwwrite(vortex->mmio, 0x24434 + i * 0x24, coefs[i][1]);
  hwwrite(vortex->mmio, 0x24438 + i * 0x24, coefs[i][2]);
  hwwrite(vortex->mmio, 0x2443C + i * 0x24, coefs[i][3]);
 }
 hwwrite(vortex->mmio, 0x24528 + i * 0x24, arg_0[0]);
 hwwrite(vortex->mmio, 0x2452C + i * 0x24, arg_0[1]);
 hwwrite(vortex->mmio, 0x24530 + i * 0x24, arg_0[2]);
 hwwrite(vortex->mmio, 0x24534 + i * 0x24, arg_0[3]);
}
