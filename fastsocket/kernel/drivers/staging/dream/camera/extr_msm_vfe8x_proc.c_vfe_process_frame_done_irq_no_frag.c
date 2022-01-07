
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_output_path_combo {int whichOutputPath; int snapshotPendingCount; int nextFrameAddrBuf; int ackPending; } ;
struct TYPE_3__ {int output2Count; int output1Count; } ;
struct TYPE_4__ {scalar_t__ vfeOperationMode; TYPE_1__ vfeDroppedFrameCounts; } ;


 int CDBG (char*) ;
 TYPE_2__* ctrl ;
 int vfe_process_frame_done_irq_no_frag_io (struct vfe_output_path_combo*,int ,int *) ;
 int vfe_send_output_msg (int,int ,int ) ;

__attribute__((used)) static void vfe_process_frame_done_irq_no_frag(
 struct vfe_output_path_combo *in)
{
 uint32_t addressToRender[2];
 static uint32_t fcnt;

 if (fcnt++ < 3)
  return;

 if (!in->ackPending) {
  vfe_process_frame_done_irq_no_frag_io(in,
   in->nextFrameAddrBuf, addressToRender);


  vfe_send_output_msg(in->whichOutputPath,
    addressToRender[0], addressToRender[1]);

 } else {


  CDBG("waiting frame ACK\n");

  if (in->whichOutputPath == 0)
   ctrl->vfeDroppedFrameCounts.output1Count++;

  if (in->whichOutputPath == 1)
   ctrl->vfeDroppedFrameCounts.output2Count++;
 }







 if (ctrl->vfeOperationMode)
  in->snapshotPendingCount--;
}
