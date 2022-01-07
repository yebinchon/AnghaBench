
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
typedef int * a3d_ItdDline_t ;


 int A3D_A_ITDDelayLine ;
 int DLINE_SZ ;
 scalar_t__ a3d_addrA (int ,int ,int ) ;
 int hwwrite (int ,scalar_t__,int ) ;

__attribute__((used)) static void a3dsrc_SetItdDline(a3dsrc_t * a, a3d_ItdDline_t const dline)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);
 int i;

 for (i = 0; i < DLINE_SZ; i++)
  hwwrite(vortex->mmio,
   a3d_addrA(a->slice, a->source,
      A3D_A_ITDDelayLine) + (i << 2), dline[i]);
}
