
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* a3d; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_7__ {int source; int slice; void* vortex; } ;
typedef TYPE_2__ a3dsrc_t ;


 int a3dsrc_SetA3DSampleRate (TYPE_2__*,int) ;
 int a3dsrc_ZeroState (TYPE_2__*) ;

__attribute__((used)) static void vortex_A3dSourceHw_Initialize(vortex_t * v, int source, int slice)
{
 a3dsrc_t *a3dsrc = &(v->a3d[source + (slice * 4)]);


 a3dsrc->vortex = (void *)v;
 a3dsrc->source = source;
 a3dsrc->slice = slice;
 a3dsrc_ZeroState(a3dsrc);

 a3dsrc_SetA3DSampleRate(a3dsrc, 0x11);
}
