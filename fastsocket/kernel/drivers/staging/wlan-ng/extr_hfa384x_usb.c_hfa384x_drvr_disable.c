
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {scalar_t__* port_enabled; scalar_t__ isap; } ;
typedef TYPE_1__ hfa384x_t ;


 int EINVAL ;
 size_t HFA384x_PORTID_MAX ;
 int hfa384x_cmd_disable (TYPE_1__*,size_t) ;

int hfa384x_drvr_disable(hfa384x_t *hw, u16 macport)
{
 int result = 0;

 if ((!hw->isap && macport != 0) ||
     (hw->isap && !(macport <= HFA384x_PORTID_MAX)) ||
     !(hw->port_enabled[macport])) {
  result = -EINVAL;
 } else {
  result = hfa384x_cmd_disable(hw, macport);
  if (result == 0)
   hw->port_enabled[macport] = 0;
 }
 return result;
}
