
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r8180_priv {int RFChangeInProgress; int eRFPowerState; int rf_ps_lock; int RfOffReason; int bInHctTest; } ;
struct net_device {int dummy; } ;
typedef int RT_RF_POWER_STATE ;


 int HalDisableRx8185Dummy (struct net_device*) ;
 int HalEnableRx8185Dummy (struct net_device*) ;
 int MgntDisconnect (struct net_device*,int ) ;
 int RF_CHANGE_BY_HW ;
 int RF_CHANGE_BY_IPS ;
 int SetRFPowerState (struct net_device*,int) ;
 int disas_lv_ss ;



 scalar_t__ ieee80211_priv (struct net_device*) ;
 int printk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

bool
MgntActSet_RF_State(
 struct net_device *dev,
 RT_RF_POWER_STATE StateToSet,
 u32 ChangeSource
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 bool bActionAllowed = 0;
 bool bConnectBySSID = 0;
 RT_RF_POWER_STATE rtState;
 u16 RFWaitCounter = 0;
 unsigned long flag;






 while(1)
 {

  spin_lock_irqsave(&priv->rf_ps_lock,flag);
  if(priv->RFChangeInProgress)
  {



   spin_unlock_irqrestore(&priv->rf_ps_lock,flag);

   while(priv->RFChangeInProgress)
   {
    RFWaitCounter ++;

    udelay(1000);


    if(RFWaitCounter > 1000)
    {

     printk("MgntActSet_RF_State(): Wait too long to set RF\n");

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

 rtState = priv->eRFPowerState;


 switch(StateToSet)
 {
 case 129:




  priv->RfOffReason &= (~ChangeSource);

  if(! priv->RfOffReason)
  {
   priv->RfOffReason = 0;
   bActionAllowed = 1;

   if(rtState == 130 && ChangeSource >=RF_CHANGE_BY_HW && !priv->bInHctTest)
   {
    bConnectBySSID = 1;
   }
  }
  else

   ;
  break;

 case 130:


   if (priv->RfOffReason > RF_CHANGE_BY_IPS)
   {
    MgntDisconnect( dev, disas_lv_ss );







   }



  priv->RfOffReason |= ChangeSource;
  bActionAllowed = 1;
  break;

 case 128:
  priv->RfOffReason |= ChangeSource;
  bActionAllowed = 1;
  break;

 default:
  break;
 }

 if(bActionAllowed)
 {



  SetRFPowerState(dev, StateToSet);


  if(StateToSet == 129)
  {
   HalEnableRx8185Dummy(dev);
   if(bConnectBySSID)
   {


   }
  }

  else if(StateToSet == 130)
  {
   HalDisableRx8185Dummy(dev);
  }
 }
 else
 {

 }



 spin_lock_irqsave(&priv->rf_ps_lock,flag);
 priv->RFChangeInProgress = 0;

 spin_unlock_irqrestore(&priv->rf_ps_lock,flag);

 return bActionAllowed;
}
