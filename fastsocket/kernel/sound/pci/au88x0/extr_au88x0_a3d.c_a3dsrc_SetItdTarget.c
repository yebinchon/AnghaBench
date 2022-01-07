
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int source; int slice; scalar_t__ vortex; } ;
typedef TYPE_2__ a3dsrc_t ;


 int A3D_B_ITDTarget ;
 int a3d_addrB (int ,int ,int ) ;
 int hwwrite (int ,int ,short) ;

__attribute__((used)) static void a3dsrc_SetItdTarget(a3dsrc_t * a, short litd, short ritd)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);

 if (litd < 0)
  litd = 0;
 if (litd > 0x57FF)
  litd = 0x57FF;
 if (ritd < 0)
  ritd = 0;
 if (ritd > 0x57FF)
  ritd = 0x57FF;
 hwwrite(vortex->mmio,
  a3d_addrB(a->slice, a->source, A3D_B_ITDTarget),
  (ritd << 0x10) | litd);

}
