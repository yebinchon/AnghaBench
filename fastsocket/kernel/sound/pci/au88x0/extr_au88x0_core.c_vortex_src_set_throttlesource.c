
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int VORTEX_SRC_SOURCE ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,int) ;

__attribute__((used)) static void
vortex_src_set_throttlesource(vortex_t * vortex, unsigned char src, int en)
{
 int temp;

 temp = hwread(vortex->mmio, VORTEX_SRC_SOURCE);
 if (en)
  temp |= 1 << src;
 else
  temp &= ~(1 << src);
 hwwrite(vortex->mmio, VORTEX_SRC_SOURCE, temp);
}
