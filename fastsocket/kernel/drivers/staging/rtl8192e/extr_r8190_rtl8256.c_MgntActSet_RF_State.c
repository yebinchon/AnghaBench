
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct r8192_priv {int RFChangeInProgress; int rf_ps_lock; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int eRFPowerState; int RfOffReason; } ;
typedef int RT_RF_POWER_STATE ;
typedef int RT_RF_CHANGE_SOURCE ;


 int COMP_ERR ;
 int COMP_POWER ;
 int MgntDisconnect (struct net_device*,int ) ;
 int RF_CHANGE_BY_HW ;
 int RF_CHANGE_BY_IPS ;
 int RT_TRACE (int ,char*,...) ;
 int SetRFPowerState (struct net_device*,int) ;
 int disas_lv_ss ;



 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

bool
MgntActSet_RF_State(
 struct net_device* dev,
 RT_RF_POWER_STATE StateToSet,
 RT_RF_CHANGE_SOURCE ChangeSource
 )
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 bool bActionAllowed = 0;
 bool bConnectBySSID = 0;
 RT_RF_POWER_STATE rtState;
 u16 RFWaitCounter = 0;
 unsigned long flag;
 RT_TRACE(COMP_POWER, "===>MgntActSet_RF_State(): StateToSet(%d)\n",StateToSet);






 while(1)
 {
  spin_lock_irqsave(&priv->rf_ps_lock,flag);
  if(priv->RFChangeInProgress)
  {
   spin_unlock_irqrestore(&priv->rf_ps_lock,flag);
   RT_TRACE(COMP_POWER, "MgntActSet_RF_State(): RF Change in progress! Wait to set..StateToSet(%d).\n", StateToSet);


   while(priv->RFChangeInProgress)
   {
    RFWaitCounter ++;
    RT_TRACE(COMP_POWER, "MgntActSet_RF_State(): Wait 1 ms (%d times)...\n", RFWaitCounter);
    udelay(1000);


    if(RFWaitCounter > 100)
    {
     RT_TRACE(COMP_ERR, "MgntActSet_RF_State(): Wait too logn to set RF\n");

     return 0;
    }
   }
  }
  else
  {
   priv->RFChangeInProgress = 1;
   spin_unlock_irqrestore(&priv->rf_ps_lock,flag);
   break;
  }
 }

 rtState = priv->ieee80211->eRFPowerState;

 switch(StateToSet)
 {
 case 129:





  priv->ieee80211->RfOffReason &= (~ChangeSource);

  if(! priv->ieee80211->RfOffReason)
  {
   priv->ieee80211->RfOffReason = 0;
   bActionAllowed = 1;


   if(rtState == 130 && ChangeSource >=RF_CHANGE_BY_HW )
   {
    bConnectBySSID = 1;
   }
  }
  else
   RT_TRACE(COMP_POWER, "MgntActSet_RF_State - eRfon reject pMgntInfo->RfOffReason= 0x%x, ChangeSource=0x%X\n", priv->ieee80211->RfOffReason, ChangeSource);

  break;

 case 130:

   if (priv->ieee80211->RfOffReason > RF_CHANGE_BY_IPS)
   {






    MgntDisconnect(dev, disas_lv_ss);




   }


  priv->ieee80211->RfOffReason |= ChangeSource;
  bActionAllowed = 1;
  break;

 case 128:
  priv->ieee80211->RfOffReason |= ChangeSource;
  bActionAllowed = 1;
  break;

 default:
  break;
 }

 if(bActionAllowed)
 {
  RT_TRACE(COMP_POWER, "MgntActSet_RF_State(): Action is allowed.... StateToSet(%d), RfOffReason(%#X)\n", StateToSet, priv->ieee80211->RfOffReason);

  SetRFPowerState(dev, StateToSet);

  if(StateToSet == 129)
  {

   if(bConnectBySSID)
   {

   }
  }

  else if(StateToSet == 130)
  {

  }
 }
 else
 {
  RT_TRACE(COMP_POWER, "MgntActSet_RF_State(): Action is rejected.... StateToSet(%d), ChangeSource(%#X), RfOffReason(%#X)\n", StateToSet, ChangeSource, priv->ieee80211->RfOffReason);
 }


 spin_lock_irqsave(&priv->rf_ps_lock,flag);
 priv->RFChangeInProgress = 0;
 spin_unlock_irqrestore(&priv->rf_ps_lock,flag);

 RT_TRACE(COMP_POWER, "<===MgntActSet_RF_State()\n");
 return bActionAllowed;
}
