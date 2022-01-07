
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ulOverlayOffset; int ulNextFreeVidMem; int ulOverlayStride; int ulOverlayUVStride; int pSTGReg; } ;


 scalar_t__ CreateOverlaySurface (int ,int,int,int,int,int*,int*) ;
 int EINVAL ;
 int GLOBAL_ALPHA ;
 int ResetOverlayRegisters (int ) ;
 int SetOverlayBlendMode (int ,int ,int,int) ;
 TYPE_1__ deviceInfo ;

__attribute__((used)) static int kyro_dev_overlay_create(u32 ulWidth,
       u32 ulHeight, int bLinear)
{
 u32 offset;
 u32 stride, uvStride;

 if (deviceInfo.ulOverlayOffset != 0)




  return -EINVAL;

 ResetOverlayRegisters(deviceInfo.pSTGReg);




 offset = deviceInfo.ulNextFreeVidMem;
 if ((offset & 0x1f) != 0) {
  offset = (offset + 32L) & 0xffffffE0L;
 }

 if (CreateOverlaySurface(deviceInfo.pSTGReg, ulWidth, ulHeight,
     bLinear, offset, &stride, &uvStride) < 0)
  return -EINVAL;

 deviceInfo.ulOverlayOffset = offset;
 deviceInfo.ulOverlayStride = stride;
 deviceInfo.ulOverlayUVStride = uvStride;
 deviceInfo.ulNextFreeVidMem = offset + (ulHeight * stride) + (ulHeight * 2 * uvStride);

 SetOverlayBlendMode(deviceInfo.pSTGReg, GLOBAL_ALPHA, 0xf, 0x0);

 return 0;
}
