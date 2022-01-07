
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {int rf_pathmap; int rf_sem; } ;
struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;


 int COMP_RF ;
 int RT_TRACE (int ,char*,int,int,int) ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_CalculateBitShift (int) ;
 int phy_QueryUsbRFReg (struct net_device*,int,int) ;
 int printk (char*,int,...) ;
 int rtl8192_phy_CheckIsLegalRFPath (struct net_device*,int) ;
 int up (int *) ;

u32 rtl8192_phy_QueryRFReg(struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 RegAddr, u32 BitMask)
{
 u32 Original_Value, Readback_Value, BitShift;
 struct r8192_priv *priv = ieee80211_priv(dev);


 RT_TRACE(COMP_RF, "--->PHY_QueryRFReg(): RegAddr(%#x), eRFPath(%#x), BitMask(%#x)\n", RegAddr, eRFPath,BitMask);

 if (!((priv->rf_pathmap >> eRFPath) & 0x1))
 {
  printk("EEEEEError: rfpath off! rf_pathmap=%x eRFPath=%x\n", priv->rf_pathmap, eRFPath);
  return 0;
 }

 if (!rtl8192_phy_CheckIsLegalRFPath(dev, eRFPath))
 {
  printk("EEEEEError: not legal rfpath! eRFPath=%x\n", eRFPath);
  return 0;
 }




 down(&priv->rf_sem);
 Original_Value = phy_QueryUsbRFReg(dev, eRFPath, RegAddr);

 BitShift = phy_CalculateBitShift(BitMask);
 Readback_Value = (Original_Value & BitMask) >> BitShift;

 up(&priv->rf_sem);




 return (Readback_Value);
}
