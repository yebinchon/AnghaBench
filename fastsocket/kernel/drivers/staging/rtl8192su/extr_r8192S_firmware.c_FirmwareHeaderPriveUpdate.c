
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct r8192_priv {int EEPROMUsbEndPointNumber; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int rf_config; int usb_ep_num; } ;
typedef TYPE_1__* PRT_8192S_FIRMWARE_PRIV ;


 int COMP_INIT ;
 int FirmwareHeaderMapRfType (struct net_device*) ;
 int RT_TRACE (int ,char*,int ) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void FirmwareHeaderPriveUpdate(struct net_device *dev, PRT_8192S_FIRMWARE_PRIV pFwPriv)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 pFwPriv->usb_ep_num = priv->EEPROMUsbEndPointNumber;
 RT_TRACE(COMP_INIT, "FirmwarePriveUpdate(): usb_ep_num(%#x)\n", pFwPriv->usb_ep_num);


 pFwPriv->rf_config = FirmwareHeaderMapRfType(dev);
}
