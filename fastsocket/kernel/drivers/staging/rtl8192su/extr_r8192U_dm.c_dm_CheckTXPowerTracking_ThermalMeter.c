
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int txpower_count; int txpower_tracking_wq; int priv_wq; int btxpower_tracking; } ;
struct net_device {int dummy; } ;


 int RF90_PATH_A ;
 int bRFRegOffsetMask ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rtl8192_phy_SetRFReg (struct net_device*,int ,int,int ,int) ;

__attribute__((used)) static void dm_CheckTXPowerTracking_ThermalMeter(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 static u8 TM_Trigger=0;


 if(!priv->btxpower_tracking)
  return;
 else
 {
  if(priv->txpower_count <= 2)
  {
   priv->txpower_count++;
   return;
  }
 }

 if(!TM_Trigger)
 {



  rtl8192_phy_SetRFReg(dev, RF90_PATH_A, 0x02, bRFRegOffsetMask, 0x4d);
  rtl8192_phy_SetRFReg(dev, RF90_PATH_A, 0x02, bRFRegOffsetMask, 0x4f);
  rtl8192_phy_SetRFReg(dev, RF90_PATH_A, 0x02, bRFRegOffsetMask, 0x4d);
  rtl8192_phy_SetRFReg(dev, RF90_PATH_A, 0x02, bRFRegOffsetMask, 0x4f);
  TM_Trigger = 1;
  return;
 }
 else
 {

   queue_delayed_work(priv->priv_wq,&priv->txpower_tracking_wq,0);
  TM_Trigger = 0;
 }
}
