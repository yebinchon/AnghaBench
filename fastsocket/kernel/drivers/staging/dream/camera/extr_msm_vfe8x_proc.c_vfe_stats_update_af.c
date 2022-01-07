
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_statsaf_update {int windowWidth; int windowHeight; int windowMode; int windowHOffset; int windowVOffset; } ;
struct vfe_cmd_stats_af_update {int windowWidth; int windowHeight; int windowMode; int windowHOffset; int windowVOffset; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_STATS_AF_CFG ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_statsaf_update*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_stats_update_af(struct vfe_cmd_stats_af_update *in)
{
 struct vfe_statsaf_update cmd;
 memset(&cmd, 0, sizeof(cmd));

 cmd.windowVOffset = in->windowVOffset;
 cmd.windowHOffset = in->windowHOffset;
 cmd.windowMode = in->windowMode;
 cmd.windowHeight = in->windowHeight;
 cmd.windowWidth = in->windowWidth;

 vfe_prog_hw(ctrl->vfebase + VFE_STATS_AF_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
