
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {int rf_pathmap; int rf_sem; } ;
struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;
typedef int Original_Value ;


 int COMP_RF ;
 int RT_TRACE (int ,char*,int,int,int,int) ;
 int bRFRegOffsetMask ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_CalculateBitShift (int) ;
 int phy_QueryUsbRFReg (struct net_device*,int,int) ;
 int phy_SetUsbRFReg (struct net_device*,int,int,int) ;
 int printk (char*,int,...) ;
 int rtl8192_phy_CheckIsLegalRFPath (struct net_device*,int) ;
 int up (int *) ;

void rtl8192_phy_SetRFReg(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 RegAddr, u32 BitMask, u32 Data)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 Original_Value, BitShift, New_Value;

 RT_TRACE(COMP_RF, "--->PHY_SetRFReg(): RegAddr(%#x), BitMask(%#x), Data(%#x), eRFPath(%#x)\n",
  RegAddr, BitMask, Data, eRFPath);

 if (!((priv->rf_pathmap >> eRFPath) & 0x1))
 {
  printk("EEEEEError: rfpath off! rf_pathmap=%x eRFPath=%x\n", priv->rf_pathmap, eRFPath);
  return ;
 }
 if (!rtl8192_phy_CheckIsLegalRFPath(dev, eRFPath))
 {
  printk("EEEEEError: not legal rfpath! eRFPath=%x\n", eRFPath);
  return;
 }




 down(&priv->rf_sem);
  if (BitMask != bRFRegOffsetMask)
  {
   Original_Value = phy_QueryUsbRFReg(dev, eRFPath, RegAddr);
   BitShift = phy_CalculateBitShift(BitMask);
   New_Value = (((Original_Value)&(~BitMask))|(Data<< BitShift));
   phy_SetUsbRFReg(dev, eRFPath, RegAddr, New_Value);
  }
  else
   phy_SetUsbRFReg(dev, eRFPath, RegAddr, Data);


 up(&priv->rf_sem);

 RT_TRACE(COMP_RF, "<---PHY_SetRFReg(): RegAddr(%#x), BitMask(%#x), Data(%#x), eRFPath(%#x)\n",
   RegAddr, BitMask, Data, eRFPath);

}
