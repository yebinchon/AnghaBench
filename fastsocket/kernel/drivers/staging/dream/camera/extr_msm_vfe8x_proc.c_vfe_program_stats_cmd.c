
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_stats_cmd_data {int colorConversionEnable; int histAutoClearEnable; int clearHistEnable; int histEnable; int axwEnable; int autoFocusEnable; } ;
struct VFE_StatsCmdType {int colorConversionEnable; int histAutoClearEnable; int clearHistEnable; int histEnable; int axwEnable; int autoFocusEnable; } ;
typedef int stats ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_STATS_CMD ;
 TYPE_1__* ctrl ;
 int memset (struct VFE_StatsCmdType*,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_program_stats_cmd(struct vfe_stats_cmd_data *in)
{
 struct VFE_StatsCmdType stats;
 memset(&stats, 0, sizeof(stats));

 stats.autoFocusEnable = in->autoFocusEnable;
 stats.axwEnable = in->axwEnable;
 stats.histEnable = in->histEnable;
 stats.clearHistEnable = in->clearHistEnable;
 stats.histAutoClearEnable = in->histAutoClearEnable;
 stats.colorConversionEnable = in->colorConversionEnable;

 writel(*((uint32_t *)&stats), ctrl->vfebase + VFE_STATS_CMD);
}
