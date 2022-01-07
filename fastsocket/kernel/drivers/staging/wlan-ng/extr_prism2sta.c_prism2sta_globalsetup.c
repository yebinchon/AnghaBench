
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ priv; } ;
typedef TYPE_1__ wlandevice_t ;
typedef int hfa384x_t ;


 int HFA384x_RID_CNFMAXDATALEN ;
 int WLAN_DATA_MAXLEN ;
 int hfa384x_drvr_setconfig16 (int *,int ,int ) ;

__attribute__((used)) static int prism2sta_globalsetup(wlandevice_t *wlandev)
{
 hfa384x_t *hw = (hfa384x_t *) wlandev->priv;


 return hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFMAXDATALEN,
     WLAN_DATA_MAXLEN);
}
