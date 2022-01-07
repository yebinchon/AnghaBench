
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits_per_pixel; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct stifb_info {TYPE_2__ info; } ;




 scalar_t__ IS_24_DEVICE (struct stifb_info*) ;
 int NGLE_LOCK (struct stifb_info*) ;
 int NGLE_UNLOCK (struct stifb_info*) ;
 int hyperUndoITE (struct stifb_info*) ;
 int ngleClearOverlayPlanes (struct stifb_info*,int,int) ;
 int ngleDepth24_ClearImagePlanes (struct stifb_info*) ;
 int ngleDepth8_ClearImagePlanes (struct stifb_info*) ;
 int ngleResetAttrPlanes (struct stifb_info*,unsigned int) ;

__attribute__((used)) static void
hyperResetPlanes(struct stifb_info *fb, int enable)
{
 unsigned int controlPlaneReg;

 NGLE_LOCK(fb);

 if (IS_24_DEVICE(fb))
  if (fb->info.var.bits_per_pixel == 32)
   controlPlaneReg = 0x04000F00;
  else
   controlPlaneReg = 0x00000F00;
 else
  controlPlaneReg = 0x00000F00;

 switch (enable) {
 case 128:

  if (IS_24_DEVICE(fb))
   ngleDepth24_ClearImagePlanes(fb);
  else
   ngleDepth8_ClearImagePlanes(fb);



  ngleResetAttrPlanes(fb, controlPlaneReg);


         ngleClearOverlayPlanes(fb, 0xff, 255);




  hyperUndoITE(fb);
  break;

 case 129:

  if (IS_24_DEVICE(fb))
   ngleDepth24_ClearImagePlanes(fb);
  else
   ngleDepth8_ClearImagePlanes(fb);
  ngleResetAttrPlanes(fb, controlPlaneReg);
  ngleClearOverlayPlanes(fb, 0xff, 0);
  break;

 case -1:
  hyperUndoITE(fb);
  ngleResetAttrPlanes(fb, controlPlaneReg);
  break;
     }

 NGLE_UNLOCK(fb);
}
