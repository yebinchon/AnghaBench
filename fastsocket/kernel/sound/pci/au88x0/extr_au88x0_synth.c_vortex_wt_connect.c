
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* mixwt; int mmio; int * mixplayb; int fixed_res; } ;
typedef TYPE_1__ vortex_t ;


 int ADB_MIXIN (int) ;
 int ADB_WTOUT (int,int) ;
 int NR_WT ;
 int NR_WTBLOCKS ;
 int NR_WTROUTES ;
 scalar_t__ VORTEX_IS_QUAD (TYPE_1__*) ;
 int VORTEX_RESOURCE_MIXIN ;
 int WT_RUN (int) ;
 int hwwrite (int ,int ,int) ;
 int vortex_adb_checkinout (TYPE_1__*,int ,int,int ) ;
 int vortex_connection_mixin_mix (TYPE_1__*,int,int,int ,int ) ;
 int vortex_route (TYPE_1__*,int,int,int ,int ) ;

__attribute__((used)) static void vortex_wt_connect(vortex_t * vortex, int en)
{
 int i, ii, mix;
 for (i = 0; i < 1; i++) {
  for (ii = 0; ii < 6; ii++) {
   mix =
       vortex_adb_checkinout(vortex,
        vortex->fixed_res, en,
        VORTEX_RESOURCE_MIXIN);
   vortex->mixwt[(i * 6) + ii] = mix;

   vortex_route(vortex, en, 0x11,
         ADB_WTOUT(i, ii + 0x20), ADB_MIXIN(mix));

   vortex_connection_mixin_mix(vortex, en, mix,
          vortex->mixplayb[ii % 2], 0);
   if (VORTEX_IS_QUAD(vortex))
    vortex_connection_mixin_mix(vortex, en,
           mix,
           vortex->mixplayb[2 +
             (ii % 2)], 0);
  }
 }
 for (i = 0; i < NR_WT; i++) {
  hwwrite(vortex->mmio, WT_RUN(i), 1);
 }
}
