
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_19__ ;
typedef struct TYPE_26__ TYPE_16__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_21__ {int ** outFragments; } ;
struct TYPE_20__ {int ** outFragments; } ;
struct TYPE_22__ {int fragmentCount; TYPE_11__ outputCbcr; TYPE_10__ outputY; } ;
struct TYPE_33__ {int ** outFragments; } ;
struct TYPE_32__ {int ** outFragments; } ;
struct TYPE_34__ {int fragmentCount; TYPE_6__ outputCbcr; TYPE_5__ outputY; } ;
struct vfe_cmd_axi_output_config {int outputDataSize; int outputMode; TYPE_12__ output1; TYPE_7__ output2; } ;
struct TYPE_36__ {int fragIndex; void* hwCurrentFlag; int * addressBuffer; } ;
struct TYPE_35__ {int fragIndex; void* hwCurrentFlag; int * addressBuffer; } ;
struct TYPE_31__ {void* viewCbcrPingpongIrq; void* viewYPingpongIrq; void* encCbcrPingpongIrq; void* encYPingpongIrq; void* viewIrq; void* encIrq; } ;
struct TYPE_30__ {int rawPixelDataSize; void* viewCbcrWrPathEn; void* viewYWrPathEn; void* encCbcrWrPathEn; void* encYWrPathEn; void* rawWritePathSelect; } ;
struct TYPE_29__ {void* viewIrqComMask; void* encIrqComMask; } ;
struct TYPE_28__ {void* camif2OutputEnable; void* camif2BusEnable; } ;
struct TYPE_26__ {int fragCount; int whichOutputPath; TYPE_9__ cbcrPath; TYPE_8__ yPath; void* currentFrame; void* ackPending; int * nextFrameAddrBuf; void* multiFrag; void* pathEnabled; } ;
struct TYPE_24__ {int fragIndex; void* hwCurrentFlag; int * addressBuffer; } ;
struct TYPE_23__ {int fragIndex; void* hwCurrentFlag; int * addressBuffer; } ;
struct TYPE_25__ {int fragCount; TYPE_14__ cbcrPath; TYPE_13__ yPath; scalar_t__ whichOutputPath; void* currentFrame; void* ackPending; int * nextFrameAddrBuf; void* multiFrag; void* pathEnabled; } ;
struct TYPE_27__ {int axiOutputMode; TYPE_16__ encPath; TYPE_15__ viewPath; TYPE_4__ vfeImaskLocal; TYPE_3__ vfeBusConfigLocal; TYPE_2__ vfeIrqCompositeMaskLocal; TYPE_1__ vfeCamifConfigLocal; } ;


 int CDBG (char*,int) ;
 void* FALSE ;
 void* TRUE ;







 void* VFE_COMP_IRQ_BOTH_Y_CBCR ;
 void* VFE_COMP_IRQ_CBCR_ONLY ;
 void* VFE_RAW_OUTPUT_DISABLED ;
 void* VFE_RAW_OUTPUT_ENC_CBCR_PATH ;
 void* VFE_RAW_OUTPUT_VIEW_CBCR_PATH ;



 TYPE_19__* ctrl ;
 void* ping ;
 int vfe_axi_output (struct vfe_cmd_axi_output_config*,TYPE_15__*,TYPE_16__*,int) ;
 int vfe_set_bus_pipo_addr (TYPE_15__*,TYPE_16__*) ;

void vfe_axi_output_config(
 struct vfe_cmd_axi_output_config *in)
{

 uint32_t *pcircle;
 uint32_t *pdest;
 uint32_t *psrc;
 uint8_t i;
 uint8_t fcnt;
 uint16_t axioutpw = 8;


 ctrl->encPath.fragCount = in->output2.fragmentCount;
 if (ctrl->encPath.fragCount > 1)
  ctrl->encPath.multiFrag = TRUE;

 ctrl->viewPath.fragCount = in->output1.fragmentCount;
 if (ctrl->viewPath.fragCount > 1)
  ctrl->viewPath.multiFrag = TRUE;


 ctrl->vfeBusConfigLocal.rawPixelDataSize = in->outputDataSize;

 switch (in->outputDataSize) {
 case 128:
  axioutpw = 8;
  break;

 case 130:
  axioutpw = 6;
  break;

 case 129:
  axioutpw = 5;
  break;
 }

 ctrl->axiOutputMode = in->outputMode;

 CDBG("axiOutputMode = %d\n", ctrl->axiOutputMode);

 switch (ctrl->axiOutputMode) {
 case 135: {
  ctrl->vfeCamifConfigLocal.camif2BusEnable = FALSE;
  ctrl->vfeCamifConfigLocal.camif2OutputEnable = TRUE;
  ctrl->vfeBusConfigLocal.rawWritePathSelect =
   VFE_RAW_OUTPUT_DISABLED;

  ctrl->encPath.pathEnabled = FALSE;
  ctrl->vfeImaskLocal.encIrq = FALSE;
  ctrl->vfeIrqCompositeMaskLocal.encIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.encYWrPathEn = FALSE;
  ctrl->vfeBusConfigLocal.encCbcrWrPathEn = FALSE;
  ctrl->viewPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.viewIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.viewIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.viewYWrPathEn = TRUE;
  ctrl->vfeBusConfigLocal.viewCbcrWrPathEn = TRUE;

  if (ctrl->vfeBusConfigLocal.encYWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.encCbcrWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encCbcrPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewYWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewCbcrWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewCbcrPingpongIrq = TRUE;
 }
  break;

 case 132: {
  ctrl->vfeCamifConfigLocal.camif2BusEnable = FALSE;
  ctrl->vfeCamifConfigLocal.camif2OutputEnable = TRUE;
  ctrl->vfeBusConfigLocal.rawWritePathSelect =
   VFE_RAW_OUTPUT_DISABLED;

  ctrl->encPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.encIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.encIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.encYWrPathEn = TRUE;
  ctrl->vfeBusConfigLocal.encCbcrWrPathEn = TRUE;

  ctrl->viewPath.pathEnabled = FALSE;
  ctrl->vfeImaskLocal.viewIrq = FALSE;
  ctrl->vfeIrqCompositeMaskLocal.viewIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.viewYWrPathEn = FALSE;
  ctrl->vfeBusConfigLocal.viewCbcrWrPathEn = FALSE;

  if (ctrl->vfeBusConfigLocal.encYWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.encCbcrWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encCbcrPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewYWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewCbcrWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewCbcrPingpongIrq = TRUE;
 }
   break;

 case 133: {
  ctrl->vfeCamifConfigLocal.camif2BusEnable = FALSE;
  ctrl->vfeCamifConfigLocal.camif2OutputEnable = TRUE;
  ctrl->vfeBusConfigLocal.rawWritePathSelect =
   VFE_RAW_OUTPUT_DISABLED;

  ctrl->encPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.encIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.encIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.encYWrPathEn = TRUE;
  ctrl->vfeBusConfigLocal.encCbcrWrPathEn = TRUE;
  ctrl->viewPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.viewIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.viewIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.viewYWrPathEn = TRUE;
  ctrl->vfeBusConfigLocal.viewCbcrWrPathEn = TRUE;

  if (ctrl->vfeBusConfigLocal.encYWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.encCbcrWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encCbcrPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewYWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewCbcrWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewCbcrPingpongIrq = TRUE;
 }
  break;

 case 136: {





  if (!in->output2.outputCbcr.outFragments[1][0]) {
   in->output2.outputCbcr.outFragments[1][0] =
    in->output2.outputCbcr.outFragments[0][0];
  }

  ctrl->vfeCamifConfigLocal.camif2BusEnable = TRUE;
  ctrl->vfeCamifConfigLocal.camif2OutputEnable = FALSE;
  ctrl->vfeBusConfigLocal.rawWritePathSelect =
   VFE_RAW_OUTPUT_ENC_CBCR_PATH;

  ctrl->encPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.encIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.encIrqComMask =
   VFE_COMP_IRQ_CBCR_ONLY;

  ctrl->vfeBusConfigLocal.encYWrPathEn = FALSE;
  ctrl->vfeBusConfigLocal.encCbcrWrPathEn = TRUE;

  ctrl->viewPath.pathEnabled = FALSE;
  ctrl->vfeImaskLocal.viewIrq = FALSE;
  ctrl->vfeIrqCompositeMaskLocal.viewIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.viewYWrPathEn = FALSE;
  ctrl->vfeBusConfigLocal.viewCbcrWrPathEn = FALSE;

  if (ctrl->vfeBusConfigLocal.encYWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.encCbcrWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encCbcrPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewYWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewCbcrWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewCbcrPingpongIrq = TRUE;
 }
  break;

 case 131: {
  ctrl->vfeCamifConfigLocal.camif2BusEnable = TRUE;
  ctrl->vfeCamifConfigLocal.camif2OutputEnable = TRUE;
  ctrl->vfeBusConfigLocal.rawWritePathSelect =
   VFE_RAW_OUTPUT_VIEW_CBCR_PATH;

  ctrl->encPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.encIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.encIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.encYWrPathEn = TRUE;
  ctrl->vfeBusConfigLocal.encCbcrWrPathEn = TRUE;

  ctrl->viewPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.viewIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.viewIrqComMask =
   VFE_COMP_IRQ_CBCR_ONLY;

  ctrl->vfeBusConfigLocal.viewYWrPathEn = FALSE;
  ctrl->vfeBusConfigLocal.viewCbcrWrPathEn = TRUE;

  if (ctrl->vfeBusConfigLocal.encYWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.encCbcrWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encCbcrPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewYWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewCbcrWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewCbcrPingpongIrq = TRUE;
 }
  break;

 case 134: {
  ctrl->vfeCamifConfigLocal.camif2BusEnable = TRUE;
  ctrl->vfeCamifConfigLocal.camif2OutputEnable = TRUE;
  ctrl->vfeBusConfigLocal.rawWritePathSelect =
   VFE_RAW_OUTPUT_ENC_CBCR_PATH;

  ctrl->encPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.encIrq = TRUE;
  ctrl->vfeIrqCompositeMaskLocal.encIrqComMask =
   VFE_COMP_IRQ_CBCR_ONLY;

  ctrl->vfeBusConfigLocal.encYWrPathEn = FALSE;
  ctrl->vfeBusConfigLocal.encCbcrWrPathEn = TRUE;

  ctrl->viewPath.pathEnabled = TRUE;
  ctrl->vfeImaskLocal.viewIrq = TRUE;

  ctrl->vfeIrqCompositeMaskLocal.viewIrqComMask =
   VFE_COMP_IRQ_BOTH_Y_CBCR;

  ctrl->vfeBusConfigLocal.viewYWrPathEn = TRUE;
  ctrl->vfeBusConfigLocal.viewCbcrWrPathEn = TRUE;

  if (ctrl->vfeBusConfigLocal.encYWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.encCbcrWrPathEn &&
    ctrl->encPath.multiFrag)
   ctrl->vfeImaskLocal.encCbcrPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewYWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewYPingpongIrq = TRUE;

  if (ctrl->vfeBusConfigLocal.viewCbcrWrPathEn &&
    ctrl->viewPath.multiFrag)
   ctrl->vfeImaskLocal.viewCbcrPingpongIrq = TRUE;
 }
  break;

 case 137:
  break;
 }



 fcnt = ctrl->encPath.fragCount;

 pcircle = ctrl->encPath.yPath.addressBuffer;
 pdest = ctrl->encPath.nextFrameAddrBuf;

 psrc = &(in->output2.outputY.outFragments[0][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output2.outputY.outFragments[1][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output2.outputY.outFragments[2][0]);
 for (i = 0; i < fcnt; i++)
  *pdest++ = *psrc++;

 pcircle = ctrl->encPath.cbcrPath.addressBuffer;

 psrc = &(in->output2.outputCbcr.outFragments[0][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output2.outputCbcr.outFragments[1][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output2.outputCbcr.outFragments[2][0]);
 for (i = 0; i < fcnt; i++)
  *pdest++ = *psrc++;

 vfe_set_bus_pipo_addr(&ctrl->viewPath, &ctrl->encPath);

 ctrl->encPath.ackPending = FALSE;
 ctrl->encPath.currentFrame = ping;
 ctrl->encPath.whichOutputPath = 1;
 ctrl->encPath.yPath.fragIndex = 2;
 ctrl->encPath.cbcrPath.fragIndex = 2;
 ctrl->encPath.yPath.hwCurrentFlag = ping;
 ctrl->encPath.cbcrPath.hwCurrentFlag = ping;


 pcircle = ctrl->viewPath.yPath.addressBuffer;
 pdest = ctrl->viewPath.nextFrameAddrBuf;
 fcnt = ctrl->viewPath.fragCount;

 psrc = &(in->output1.outputY.outFragments[0][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output1.outputY.outFragments[1][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output1.outputY.outFragments[2][0]);
 for (i = 0; i < fcnt; i++)
  *pdest++ = *psrc++;

 pcircle = ctrl->viewPath.cbcrPath.addressBuffer;

 psrc = &(in->output1.outputCbcr.outFragments[0][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output1.outputCbcr.outFragments[1][0]);
 for (i = 0; i < fcnt; i++)
  *pcircle++ = *psrc++;

 psrc = &(in->output1.outputCbcr.outFragments[2][0]);
 for (i = 0; i < fcnt; i++)
  *pdest++ = *psrc++;

 ctrl->viewPath.ackPending = FALSE;
 ctrl->viewPath.currentFrame = ping;
 ctrl->viewPath.whichOutputPath = 0;
 ctrl->viewPath.yPath.fragIndex = 2;
 ctrl->viewPath.cbcrPath.fragIndex = 2;
 ctrl->viewPath.yPath.hwCurrentFlag = ping;
 ctrl->viewPath.cbcrPath.hwCurrentFlag = ping;


 vfe_axi_output(in, &ctrl->viewPath, &ctrl->encPath, axioutpw);
}
