
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_6__ {int * addressBuffer; } ;
struct TYPE_5__ {int * addressBuffer; } ;
struct vfe_output_path_combo {size_t currentFrame; size_t fragCount; int whichOutputPath; int snapshotPendingCount; TYPE_2__ cbcrPath; TYPE_1__ yPath; int * nextFrameAddrBuf; int ackPending; } ;
struct TYPE_7__ {int output2Count; int output1Count; } ;
struct TYPE_8__ {scalar_t__ vfeOperationMode; TYPE_3__ vfeDroppedFrameCounts; } ;


 TYPE_4__* ctrl ;
 int vfe_send_output_msg (int,int ,int ) ;

__attribute__((used)) static void vfe_process_frame_done_irq_multi_frag(
 struct vfe_output_path_combo *in)
{
 uint32_t yAddress, cbcrAddress;
 uint16_t idx;
 uint32_t *ptrY;
 uint32_t *ptrCbcr;
 const uint32_t *ptrSrc;
 uint8_t i;

 if (!in->ackPending) {

  idx = (in->currentFrame) * (in->fragCount);


  yAddress = in->yPath.addressBuffer[idx];
  cbcrAddress = in->cbcrPath.addressBuffer[idx];


  ptrSrc = in->nextFrameAddrBuf;
  ptrY = (uint32_t *)&(in->yPath.addressBuffer[idx]);
  ptrCbcr = (uint32_t *)&(in->cbcrPath.addressBuffer[idx]);


  for (i = 0; i < in->fragCount; i++)
   *ptrY++ = *ptrSrc++;


  for (i = 0; i < in->fragCount; i++)
   *ptrCbcr++ = *ptrSrc++;

  vfe_send_output_msg(in->whichOutputPath, yAddress, cbcrAddress);

 } else {
  if (in->whichOutputPath == 0)
   ctrl->vfeDroppedFrameCounts.output1Count++;

  if (in->whichOutputPath == 1)
   ctrl->vfeDroppedFrameCounts.output2Count++;
 }


 in->currentFrame = in->currentFrame^1;

 if (ctrl->vfeOperationMode)
  in->snapshotPendingCount--;
}
