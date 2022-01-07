
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmds_camif_frame {int linesPerFrame; int pixelsPerLine; } ;
struct vfe_camifframe_update {int linesPerFrame; int pixelsPerLine; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ CAMIF_FRAME_CONFIG ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_camifframe_update*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_camif_frame_update(struct vfe_cmds_camif_frame *in)
{
 struct vfe_camifframe_update cmd;

 memset(&cmd, 0, sizeof(cmd));

 cmd.pixelsPerLine = in->pixelsPerLine;
 cmd.linesPerFrame = in->linesPerFrame;

 vfe_prog_hw(ctrl->vfebase + CAMIF_FRAME_CONFIG, (uint32_t *)&cmd,
  sizeof(cmd));
}
