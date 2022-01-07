
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vfeFrameSkipCount; int vfeFrameSkipPattern; scalar_t__ vfeSnapShotCount; int vfeFrameSkipPeriod; scalar_t__ vfebase; scalar_t__ vfeOperationMode; int vfeFrameId; } ;


 scalar_t__ CAMIF_COMMAND ;
 int CAMIF_COMMAND_STOP_AT_FRAME_BOUNDARY ;
 int CDBG (char*,int ) ;
 TYPE_1__* ctrl ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_process_camif_sof_irq(void)
{

 ctrl->vfeFrameId++;

 CDBG("camif_sof_irq, frameId = %d\n",
  ctrl->vfeFrameId);
 if (ctrl->vfeOperationMode) {
  if ((1 << ctrl->vfeFrameSkipCount) &
    ctrl->vfeFrameSkipPattern) {

   ctrl->vfeSnapShotCount--;
   if (ctrl->vfeSnapShotCount == 0)

    writel(CAMIF_COMMAND_STOP_AT_FRAME_BOUNDARY,
     ctrl->vfebase + CAMIF_COMMAND);
  }


  ctrl->vfeFrameSkipCount++;
  if (ctrl->vfeFrameSkipCount ==
    (ctrl->vfeFrameSkipPeriod + 1))
   ctrl->vfeFrameSkipCount = 0;
 }
}
