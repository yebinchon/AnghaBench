
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_7__ {int redBlueDefectPixelCount; int greenDefectPixelCount; } ;
struct TYPE_9__ {int asfMaxEdge; int asfHbiCount; } ;
struct vfe_msg_output {int frameCounter; TYPE_2__ bpcInfo; TYPE_4__ asfInfo; void* cbcrBuffer; void* yBuffer; } ;
typedef scalar_t__ boolean ;
struct TYPE_8__ {int redBlueDefectPixelCount; int greenDefectPixelCount; } ;
struct TYPE_6__ {int asfMaxEdge; int asfHbiCount; } ;
struct TYPE_10__ {int vfeFrameId; TYPE_3__ vfeBpcFrameInfo; TYPE_1__ vfeAsfFrameInfo; } ;


 TYPE_5__* ctrl ;
 int vfe_send_output1_msg (struct vfe_msg_output*) ;
 int vfe_send_output2_msg (struct vfe_msg_output*) ;

__attribute__((used)) static void vfe_send_output_msg(boolean whichOutputPath,
 uint32_t yPathAddr, uint32_t cbcrPathAddr)
{
 struct vfe_msg_output msgPayload;

 msgPayload.yBuffer = yPathAddr;
 msgPayload.cbcrBuffer = cbcrPathAddr;
 msgPayload.frameCounter = ctrl->vfeFrameId;

 if (whichOutputPath) {

  vfe_send_output2_msg(&msgPayload);
 } else {

  vfe_send_output1_msg(&msgPayload);
 }
}
