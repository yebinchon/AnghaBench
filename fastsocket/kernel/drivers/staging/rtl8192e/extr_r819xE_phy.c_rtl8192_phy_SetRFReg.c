
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {scalar_t__ Rf_Mode; int being_init_adapter; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;
typedef int RF90_RADIO_PATH_E ;
typedef int Original_Value ;


 int COMP_PHY ;
 scalar_t__ RF_OP_By_FW ;
 int RT_TRACE (int ,char*) ;
 int bMask12Bits ;
 scalar_t__ eRfOn ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_FwRFSerialRead (struct net_device*,int ,int) ;
 int phy_FwRFSerialWrite (struct net_device*,int ,int,int) ;
 int rtl8192_CalculateBitShift (int) ;
 int rtl8192_phy_CheckIsLegalRFPath (struct net_device*,int ) ;
 int rtl8192_phy_RFSerialRead (struct net_device*,int ,int) ;
 int rtl8192_phy_RFSerialWrite (struct net_device*,int ,int,int) ;
 int udelay (int) ;

void rtl8192_phy_SetRFReg(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 RegAddr, u32 BitMask, u32 Data)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 Original_Value, BitShift, New_Value;


 if (!rtl8192_phy_CheckIsLegalRFPath(dev, eRFPath))
  return;







 RT_TRACE(COMP_PHY, "FW RF CTRL is not ready now\n");
 if (priv->Rf_Mode == RF_OP_By_FW)
 {
  if (BitMask != bMask12Bits)
  {
   Original_Value = phy_FwRFSerialRead(dev, eRFPath, RegAddr);
   BitShift = rtl8192_CalculateBitShift(BitMask);
   New_Value = (((Original_Value) & (~BitMask)) | (Data<< BitShift));

   phy_FwRFSerialWrite(dev, eRFPath, RegAddr, New_Value);
  }else
   phy_FwRFSerialWrite(dev, eRFPath, RegAddr, Data);
  udelay(200);

 }
 else
 {
  if (BitMask != bMask12Bits)
            {
   Original_Value = rtl8192_phy_RFSerialRead(dev, eRFPath, RegAddr);
         BitShift = rtl8192_CalculateBitShift(BitMask);
         New_Value = (((Original_Value) & (~BitMask)) | (Data<< BitShift));

   rtl8192_phy_RFSerialWrite(dev, eRFPath, RegAddr, New_Value);
         }else
   rtl8192_phy_RFSerialWrite(dev, eRFPath, RegAddr, Data);
 }


 return;
}
