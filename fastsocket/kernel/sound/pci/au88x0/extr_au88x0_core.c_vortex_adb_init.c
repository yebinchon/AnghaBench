
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int ROUTE_MASK ;
 scalar_t__ VORTEX_ADB_CHNBASE ;
 int VORTEX_ADB_CHNBASE_COUNT ;
 scalar_t__ VORTEX_ADB_RTBASE ;
 int VORTEX_ADB_RTBASE_COUNT ;
 scalar_t__ VORTEX_ADB_SR ;
 int hwread (int ,scalar_t__) ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void vortex_adb_init(vortex_t * vortex)
{
 int i;


 hwwrite(vortex->mmio, VORTEX_ADB_SR, 0);
 for (i = 0; i < VORTEX_ADB_RTBASE_COUNT; i++)
  hwwrite(vortex->mmio, VORTEX_ADB_RTBASE + (i << 2),
   hwread(vortex->mmio,
          VORTEX_ADB_RTBASE + (i << 2)) | ROUTE_MASK);
 for (i = 0; i < VORTEX_ADB_CHNBASE_COUNT; i++) {
  hwwrite(vortex->mmio, VORTEX_ADB_CHNBASE + (i << 2),
   hwread(vortex->mmio,
          VORTEX_ADB_CHNBASE + (i << 2)) | ROUTE_MASK);
 }
}
