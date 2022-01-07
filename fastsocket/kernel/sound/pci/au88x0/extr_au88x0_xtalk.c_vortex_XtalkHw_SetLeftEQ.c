
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef short** xtalk_coefs_t ;
struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int hwwrite (int ,int,short) ;

__attribute__((used)) static void
vortex_XtalkHw_SetLeftEQ(vortex_t * vortex, short arg_0, short arg_4,
    xtalk_coefs_t const coefs)
{
 int i;

 for (i = 0; i < 5; i++) {
  hwwrite(vortex->mmio, 0x24200 + i * 0x24, coefs[i][0]);
  hwwrite(vortex->mmio, 0x24204 + i * 0x24, coefs[i][1]);
  hwwrite(vortex->mmio, 0x24208 + i * 0x24, coefs[i][2]);
  hwwrite(vortex->mmio, 0x2420c + i * 0x24, coefs[i][3]);
  hwwrite(vortex->mmio, 0x24210 + i * 0x24, coefs[i][4]);
 }
 hwwrite(vortex->mmio, 0x24538, arg_0 & 0xffff);
 hwwrite(vortex->mmio, 0x2453C, arg_4 & 0xffff);
}
