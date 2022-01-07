
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef int hfa384x_t ;
struct TYPE_3__ {int cmd; scalar_t__ parm2; scalar_t__ parm1; scalar_t__ parm0; } ;
typedef TYPE_1__ hfa384x_metacmd_t ;


 int HFA384x_CMDCODE_MONITOR ;
 int HFA384x_CMD_AINFO_SET (int ) ;
 int HFA384x_CMD_CMDCODE_SET (int ) ;
 int hfa384x_docmd_wait (int *,TYPE_1__*) ;

int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
{
 int result = 0;
 hfa384x_metacmd_t cmd;

 cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_MONITOR) |
     HFA384x_CMD_AINFO_SET(enable);
 cmd.parm0 = 0;
 cmd.parm1 = 0;
 cmd.parm2 = 0;

 result = hfa384x_docmd_wait(hw, &cmd);

 return result;
}
