
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct vfe_cmd_axi_input_config {int pixelSize; int xOffset; int xSize; int rowIncrement; int padBottomLineCount; int padTopLineCount; int padRightStopCycle3; int padRightStopCycle2; int padRightStopCycle1; int padRightStopCycle0; int padRightComponentSelectCycle3; int padRightComponentSelectCycle2; int padRightComponentSelectCycle1; int padRightComponentSelectCycle0; int padLeftStopCycle3; int padLeftStopCycle2; int padLeftStopCycle1; int padLeftStopCycle0; int padLeftComponentSelectCycle3; int padLeftComponentSelectCycle2; int padLeftComponentSelectCycle1; int padLeftComponentSelectCycle0; int padRepeatCountBottom; int padRepeatCountTop; int padRepeatCountRight; int padRepeatCountLeft; int unpackPhase; scalar_t__ unpackHbi; int ySize; int numOfRows; int * fragAddr; } ;
struct VFE_AxiInputCmdType {int burstLength; int RowIncrement; int mainUnpackWidth; int bottomUnapckPattern; int topUnapckPattern; int rightUnpackStop3; int rightUnpackStop2; int rightUnpackStop1; int rightUnpackStop0; int rightUnpackPattern3; int rightUnpackPattern2; int rightUnpackPattern1; int rightUnpackPattern0; int leftUnpackStop3; int leftUnpackStop2; int leftUnpackStop1; int leftUnpackStop0; int leftUnpackPattern3; int leftUnpackPattern2; int leftUnpackPattern1; int leftUnpackPattern0; int padBottom; int padTop; int padRight; int padLeft; void* unpackPattern; int mainUnpackPhase; void* mainUnpackHbiSel; int mainUnpackHeight; int NumOfRows; void* xSizeWord; scalar_t__ yOffsetDelta; int ySize; int stripeStartAddr3; int stripeStartAddr2; int stripeStartAddr1; int stripeStartAddr0; } ;
typedef int cmd ;
struct TYPE_3__ {int rdPingpongIrq; } ;
struct TYPE_4__ {int axiInputDataSize; scalar_t__ vfebase; TYPE_1__ vfeImaskLocal; } ;


 int TRUE ;
 scalar_t__ VFE_BUS_PINGPONG_IRQ_EN ;
 scalar_t__ VFE_BUS_STRIPE_RD_ADDR_0 ;



 TYPE_2__* ctrl ;
 int memset (struct VFE_AxiInputCmdType*,int ,int) ;
 int vfe_prog_hw (scalar_t__,void**,int) ;
 int writel (void*,scalar_t__) ;

void vfe_axi_input_config(struct vfe_cmd_axi_input_config *in)
{
 struct VFE_AxiInputCmdType cmd;
 uint32_t xSizeWord, axiRdUnpackPattern;
 uint8_t axiInputPpw;
 uint32_t busPingpongRdIrqEnable;

 ctrl->vfeImaskLocal.rdPingpongIrq = TRUE;

 switch (in->pixelSize) {
 case 130:
  ctrl->axiInputDataSize = 130;
  break;

 case 129:
  ctrl->axiInputDataSize = 129;
  break;

 case 128:
 default:
  ctrl->axiInputDataSize = 128;
  break;
 }

 memset(&cmd, 0, sizeof(cmd));

 switch (in->pixelSize) {
 case 130:
  axiInputPpw = 6;
  axiRdUnpackPattern = 0xD43210;
  break;

 case 129:
  axiInputPpw = 5;
  axiRdUnpackPattern = 0xC3210;
  break;

 case 128:
 default:
  axiInputPpw = 8;
  axiRdUnpackPattern = 0xF6543210;
  break;
 }

 xSizeWord =
  ((((in->xOffset % axiInputPpw) + in->xSize) +
   (axiInputPpw-1)) / axiInputPpw) - 1;

 cmd.stripeStartAddr0 = in->fragAddr[0];
 cmd.stripeStartAddr1 = in->fragAddr[1];
 cmd.stripeStartAddr2 = in->fragAddr[2];
 cmd.stripeStartAddr3 = in->fragAddr[3];
 cmd.ySize = in->ySize;
 cmd.yOffsetDelta = 0;
 cmd.xSizeWord = xSizeWord;
 cmd.burstLength = 1;
 cmd.NumOfRows = in->numOfRows;
 cmd.RowIncrement =
  (in->rowIncrement + (axiInputPpw-1))/axiInputPpw;
 cmd.mainUnpackHeight = in->ySize;
 cmd.mainUnpackWidth = in->xSize - 1;
 cmd.mainUnpackHbiSel = (uint32_t)in->unpackHbi;
 cmd.mainUnpackPhase = in->unpackPhase;
 cmd.unpackPattern = axiRdUnpackPattern;
 cmd.padLeft = in->padRepeatCountLeft;
 cmd.padRight = in->padRepeatCountRight;
 cmd.padTop = in->padRepeatCountTop;
 cmd.padBottom = in->padRepeatCountBottom;
 cmd.leftUnpackPattern0 = in->padLeftComponentSelectCycle0;
 cmd.leftUnpackPattern1 = in->padLeftComponentSelectCycle1;
 cmd.leftUnpackPattern2 = in->padLeftComponentSelectCycle2;
 cmd.leftUnpackPattern3 = in->padLeftComponentSelectCycle3;
 cmd.leftUnpackStop0 = in->padLeftStopCycle0;
 cmd.leftUnpackStop1 = in->padLeftStopCycle1;
 cmd.leftUnpackStop2 = in->padLeftStopCycle2;
 cmd.leftUnpackStop3 = in->padLeftStopCycle3;
 cmd.rightUnpackPattern0 = in->padRightComponentSelectCycle0;
 cmd.rightUnpackPattern1 = in->padRightComponentSelectCycle1;
 cmd.rightUnpackPattern2 = in->padRightComponentSelectCycle2;
 cmd.rightUnpackPattern3 = in->padRightComponentSelectCycle3;
 cmd.rightUnpackStop0 = in->padRightStopCycle0;
 cmd.rightUnpackStop1 = in->padRightStopCycle1;
 cmd.rightUnpackStop2 = in->padRightStopCycle2;
 cmd.rightUnpackStop3 = in->padRightStopCycle3;
 cmd.topUnapckPattern = in->padTopLineCount;
 cmd.bottomUnapckPattern = in->padBottomLineCount;


 vfe_prog_hw(ctrl->vfebase + VFE_BUS_STRIPE_RD_ADDR_0,
  (uint32_t *)&cmd, sizeof(cmd));


 busPingpongRdIrqEnable = 0xf;

 writel(busPingpongRdIrqEnable,
  ctrl->vfebase + VFE_BUS_PINGPONG_IRQ_EN);
}
