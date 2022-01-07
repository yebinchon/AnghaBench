
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void** mixspdif; int fixed_res; void** mixcapt; void** mixplayb; } ;
typedef TYPE_1__ vortex_t ;


 int ADB_SPDIFOUT (int) ;
 int MIX_CAPT (int) ;
 scalar_t__ VORTEX_IS_QUAD (TYPE_1__*) ;
 int VORTEX_RESOURCE_MIXIN ;
 int VORTEX_RESOURCE_MIXOUT ;
 int vortex_Vort3D_connect (TYPE_1__*,int) ;
 void* vortex_adb_checkinout (TYPE_1__*,int ,int,int ) ;
 int vortex_connect_codecplay (TYPE_1__*,int,void**) ;
 int vortex_connect_codecrec (TYPE_1__*,int,int ,int ) ;
 int vortex_connection_mix_adb (TYPE_1__*,int,int,void*,int ) ;
 int vortex_wt_connect (TYPE_1__*,int) ;

__attribute__((used)) static void vortex_connect_default(vortex_t * vortex, int en)
{

 vortex->mixplayb[0] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
      VORTEX_RESOURCE_MIXOUT);
 vortex->mixplayb[1] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
      VORTEX_RESOURCE_MIXOUT);
 if (VORTEX_IS_QUAD(vortex)) {
  vortex->mixplayb[2] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
       VORTEX_RESOURCE_MIXOUT);
  vortex->mixplayb[3] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
       VORTEX_RESOURCE_MIXOUT);
 }
 vortex_connect_codecplay(vortex, en, vortex->mixplayb);

 vortex->mixcapt[0] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
      VORTEX_RESOURCE_MIXIN);
 vortex->mixcapt[1] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
      VORTEX_RESOURCE_MIXIN);
 vortex_connect_codecrec(vortex, en, MIX_CAPT(0), MIX_CAPT(1));



 vortex->mixspdif[0] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
      VORTEX_RESOURCE_MIXOUT);
 vortex->mixspdif[1] = vortex_adb_checkinout(vortex, vortex->fixed_res, en,
      VORTEX_RESOURCE_MIXOUT);
 vortex_connection_mix_adb(vortex, en, 0x14, vortex->mixspdif[0],
      ADB_SPDIFOUT(0));
 vortex_connection_mix_adb(vortex, en, 0x14, vortex->mixspdif[1],
      ADB_SPDIFOUT(1));



 vortex_wt_connect(vortex, en);



 vortex_Vort3D_connect(vortex, en);







}
