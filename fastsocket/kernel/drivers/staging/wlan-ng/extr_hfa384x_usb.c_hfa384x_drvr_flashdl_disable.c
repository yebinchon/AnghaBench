
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dlstate; } ;
typedef TYPE_1__ hfa384x_t ;


 int EINVAL ;
 scalar_t__ HFA384x_DLSTATE_DISABLED ;
 scalar_t__ HFA384x_DLSTATE_FLASHENABLED ;
 int HFA384x_PROGMODE_DISABLE ;
 int hfa384x_cmd_download (TYPE_1__*,int ,int ,int ,int ) ;
 int pr_debug (char*) ;

int hfa384x_drvr_flashdl_disable(hfa384x_t *hw)
{

 if (hw->dlstate != HFA384x_DLSTATE_FLASHENABLED)
  return -EINVAL;

 pr_debug("flashdl_enable\n");



 hfa384x_cmd_download(hw, HFA384x_PROGMODE_DISABLE, 0, 0, 0);
 hw->dlstate = HFA384x_DLSTATE_DISABLED;

 return 0;
}
