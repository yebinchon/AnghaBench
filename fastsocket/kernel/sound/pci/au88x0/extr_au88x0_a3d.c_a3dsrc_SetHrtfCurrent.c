
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
typedef int* a3d_Hrtf_t ;


 int A3D_B_HrtfCurrent ;
 int HRTF_SZ ;
 scalar_t__ a3d_addrB (int ,int ,int ) ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void
a3dsrc_SetHrtfCurrent(a3dsrc_t * a, a3d_Hrtf_t const aa, a3d_Hrtf_t const b)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);
 int i;

 for (i = 0; i < HRTF_SZ; i++)
  hwwrite(vortex->mmio,
   a3d_addrB(a->slice, a->source,
      A3D_B_HrtfCurrent) + (i << 2),
   (b[i] << 0x10) | aa[i]);
}
