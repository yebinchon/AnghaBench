
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {scalar_t__ Rf_Mode; int rf_sem; int being_init_adapter; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;
typedef int RF90_RADIO_PATH_E ;


 scalar_t__ RF_OP_By_FW ;
 int down (int *) ;
 scalar_t__ eRfOn ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_FwRFSerialRead (struct net_device*,int ,int) ;
 int rtl8192_CalculateBitShift (int) ;
 int rtl8192_phy_CheckIsLegalRFPath (struct net_device*,int ) ;
 int rtl8192_phy_RFSerialRead (struct net_device*,int ,int) ;
 int udelay (int) ;
 int up (int *) ;

u32 rtl8192_phy_QueryRFReg(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 RegAddr, u32 BitMask)
{
 u32 Original_Value, Readback_Value, BitShift;
 struct r8192_priv *priv = ieee80211_priv(dev);
 if (!rtl8192_phy_CheckIsLegalRFPath(dev, eRFPath))
  return 0;




 down(&priv->rf_sem);
 if (priv->Rf_Mode == RF_OP_By_FW)
 {
  Original_Value = phy_FwRFSerialRead(dev, eRFPath, RegAddr);
  udelay(200);
 }
 else
 {
  Original_Value = rtl8192_phy_RFSerialRead(dev, eRFPath, RegAddr);

 }
 BitShift = rtl8192_CalculateBitShift(BitMask);
    Readback_Value = (Original_Value & BitMask) >> BitShift;
 up(&priv->rf_sem);

 return (Readback_Value);
}
