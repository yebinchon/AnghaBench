
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {int * addressBuffer; } ;
struct TYPE_13__ {int * addressBuffer; } ;
struct vfe_output_path_combo {TYPE_6__ cbcrPath; TYPE_4__ yPath; } ;
struct TYPE_16__ {int imageWidth; int outRowIncrement; int outRowCount; int imageHeight; } ;
struct TYPE_14__ {int imageWidth; int outRowIncrement; int outRowCount; int imageHeight; } ;
struct TYPE_17__ {TYPE_7__ outputCbcr; TYPE_5__ outputY; } ;
struct TYPE_11__ {int imageWidth; int outRowIncrement; int outRowCount; int imageHeight; } ;
struct TYPE_10__ {int imageWidth; int outRowIncrement; int outRowCount; int imageHeight; } ;
struct TYPE_12__ {TYPE_2__ outputCbcr; TYPE_1__ outputY; } ;
struct vfe_cmd_axi_output_config {TYPE_8__ output1; TYPE_3__ output2; } ;
struct vfe_axi_out_cfg {int out2YImageWidthin64bit; int out2YRowIncrementIn64bit; int out2CbcrImageWidthIn64bit; int out2CbcrRowIncrementIn64bit; int out1YImageWidthin64bit; int out1YRowIncrementIn64bit; int out1CbcrImageWidthIn64bit; int out1CbcrRowIncrementIn64bit; int out1CbcrNumRows; void* out1CbcrBurstLength; int out1CbcrImageHeight; int out1CbcrPongAddr; int out1CbcrPingAddr; int out1YNumRows; void* out1YBurstLength; int out1YImageHeight; int out1YPongAddr; int out1YPingAddr; int out2CbcrNumRows; void* out2CbcrBurstLength; int out2CbcrImageHeight; int out2CbcrPongAddr; int out2CbcrPingAddr; int out2YNumRows; void* out2YBurstLength; int out2YImageHeight; int out2YPongAddr; int out2YPingAddr; } ;
typedef int cmd ;
struct TYPE_18__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_BUS_ENC_Y_WR_PING_ADDR ;
 TYPE_9__* ctrl ;
 int vfe_prog_hw (scalar_t__,void**,int) ;

__attribute__((used)) static void vfe_axi_output(struct vfe_cmd_axi_output_config *in,
 struct vfe_output_path_combo *out1,
 struct vfe_output_path_combo *out2, uint16_t out)
{
 struct vfe_axi_out_cfg cmd;

 uint16_t temp;
 uint32_t burstLength;


 burstLength = 1;



 cmd.out2YPingAddr = out2->yPath.addressBuffer[0];


 cmd.out2YPongAddr = out2->yPath.addressBuffer[1];


 cmd.out2YImageHeight = in->output2.outputY.imageHeight;


 temp = (in->output2.outputY.imageWidth + (out - 1)) /
  out;
 cmd.out2YImageWidthin64bit = temp;


 cmd.out2YBurstLength = burstLength;
 cmd.out2YNumRows = in->output2.outputY.outRowCount;
 temp = (in->output2.outputY.outRowIncrement + (out - 1)) /
  out;
 cmd.out2YRowIncrementIn64bit = temp;



 cmd.out2CbcrPingAddr = out2->cbcrPath.addressBuffer[0];


 cmd.out2CbcrPongAddr = out2->cbcrPath.addressBuffer[1];


 cmd.out2CbcrImageHeight = in->output2.outputCbcr.imageHeight;
 temp = (in->output2.outputCbcr.imageWidth + (out - 1)) /
  out;
 cmd.out2CbcrImageWidthIn64bit = temp;


 cmd.out2CbcrBurstLength = burstLength;
 cmd.out2CbcrNumRows = in->output2.outputCbcr.outRowCount;
 temp = (in->output2.outputCbcr.outRowIncrement + (out - 1)) /
  out;
 cmd.out2CbcrRowIncrementIn64bit = temp;



 cmd.out1YPingAddr = out1->yPath.addressBuffer[0];


 cmd.out1YPongAddr = out1->yPath.addressBuffer[1];


 cmd.out1YImageHeight = in->output1.outputY.imageHeight;
 temp = (in->output1.outputY.imageWidth + (out - 1)) /
  out;
 cmd.out1YImageWidthin64bit = temp;


 cmd.out1YBurstLength = burstLength;
 cmd.out1YNumRows = in->output1.outputY.outRowCount;

 temp =
  (in->output1.outputY.outRowIncrement +
   (out - 1)) / out;
 cmd.out1YRowIncrementIn64bit = temp;


 cmd.out1CbcrPingAddr = out1->cbcrPath.addressBuffer[0];


 cmd.out1CbcrPongAddr =
  out1->cbcrPath.addressBuffer[1];


 cmd.out1CbcrImageHeight = in->output1.outputCbcr.imageHeight;
 temp = (in->output1.outputCbcr.imageWidth +
  (out - 1)) / out;
 cmd.out1CbcrImageWidthIn64bit = temp;

 cmd.out1CbcrBurstLength = burstLength;
 cmd.out1CbcrNumRows = in->output1.outputCbcr.outRowCount;
 temp =
  (in->output1.outputCbcr.outRowIncrement +
   (out - 1)) / out;

 cmd.out1CbcrRowIncrementIn64bit = temp;

 vfe_prog_hw(ctrl->vfebase + VFE_BUS_ENC_Y_WR_PING_ADDR,
  (uint32_t *)&cmd, sizeof(cmd));
}
