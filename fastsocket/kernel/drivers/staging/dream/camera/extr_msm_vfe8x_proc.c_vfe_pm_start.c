
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmd_bus_pm_start {int output1CbcrWrPmEnable; int output1YWrPmEnable; int output2CbcrWrPmEnable; int output2YWrPmEnable; } ;
struct VFE_Bus_Pm_ConfigCmdType {int output1CbcrWrPmEnable; int output1YWrPmEnable; int output2CbcrWrPmEnable; int output2YWrPmEnable; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_BUS_PM_CFG ;
 TYPE_1__* ctrl ;
 int memset (struct VFE_Bus_Pm_ConfigCmdType*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

__attribute__((used)) static void vfe_pm_start(struct vfe_cmd_bus_pm_start *in)
{
 struct VFE_Bus_Pm_ConfigCmdType cmd;
 memset(&cmd, 0, sizeof(struct VFE_Bus_Pm_ConfigCmdType));

 cmd.output2YWrPmEnable = in->output2YWrPmEnable;
 cmd.output2CbcrWrPmEnable = in->output2CbcrWrPmEnable;
 cmd.output1YWrPmEnable = in->output1YWrPmEnable;
 cmd.output1CbcrWrPmEnable = in->output1CbcrWrPmEnable;

 vfe_prog_hw(ctrl->vfebase + VFE_BUS_PM_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
