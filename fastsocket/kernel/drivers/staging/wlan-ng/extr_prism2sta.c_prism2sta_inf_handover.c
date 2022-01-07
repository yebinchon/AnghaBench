
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlandevice_t ;
typedef int hfa384x_InfFrame_t ;


 int pr_debug (char*) ;

__attribute__((used)) static void prism2sta_inf_handover(wlandevice_t *wlandev,
       hfa384x_InfFrame_t *inf)
{
 pr_debug("received infoframe:HANDOVER (unhandled)\n");
 return;
}
