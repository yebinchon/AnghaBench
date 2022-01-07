
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r8180_priv {int FalseAlarmRegValue; int InitialGain; int DozePeriodInPast2Sec; int RegBModeGainStage; int DIG_NumberFallbackVote; int InitialGainBackUp; int DIG_NumberUpgradeVote; scalar_t__ RegDigOfdmFaUpTh; } ;
struct net_device {int dummy; } ;


 int UpdateInitialGain (struct net_device*) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;

void
DIG_Zebra(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u16 CCKFalseAlarm, OFDMFalseAlarm;
 u16 OfdmFA1, OfdmFA2;
 int InitialGainStep = 7;
 int LowestGainStage = 4;
 u32 AwakePeriodIn2Sec=0;



 CCKFalseAlarm = (u16)(priv->FalseAlarmRegValue & 0x0000ffff);
 OFDMFalseAlarm = (u16)((priv->FalseAlarmRegValue >> 16) & 0x0000ffff);
 OfdmFA1 = 0x15;
 OfdmFA2 = ((u16)(priv->RegDigOfdmFaUpTh)) << 8;





 if (priv->InitialGain == 0 )
 {
  priv->InitialGain = 4;
 }

 {
  OfdmFA1 = 0x20;
 }


 AwakePeriodIn2Sec = (2000-priv ->DozePeriodInPast2Sec);

 priv ->DozePeriodInPast2Sec=0;

 if(AwakePeriodIn2Sec)
 {


  OfdmFA1 = (u16)((OfdmFA1*AwakePeriodIn2Sec) / 2000) ;
  OfdmFA2 = (u16)((OfdmFA2*AwakePeriodIn2Sec) / 2000) ;

 }
 else
 {
  ;
 }


 InitialGainStep = 8;
 LowestGainStage = priv->RegBModeGainStage;

 if (OFDMFalseAlarm > OfdmFA1)
 {
  if (OFDMFalseAlarm > OfdmFA2)
  {
   priv->DIG_NumberFallbackVote++;
   if (priv->DIG_NumberFallbackVote >1)
   {

    if (priv->InitialGain < InitialGainStep)
    {
     priv->InitialGainBackUp= priv->InitialGain;

     priv->InitialGain = (priv->InitialGain + 1);


     UpdateInitialGain(dev);
    }
    priv->DIG_NumberFallbackVote = 0;
    priv->DIG_NumberUpgradeVote=0;
   }
  }
  else
  {
   if (priv->DIG_NumberFallbackVote)
    priv->DIG_NumberFallbackVote--;
  }
  priv->DIG_NumberUpgradeVote=0;
 }
 else
 {
  if (priv->DIG_NumberFallbackVote)
   priv->DIG_NumberFallbackVote--;
  priv->DIG_NumberUpgradeVote++;

  if (priv->DIG_NumberUpgradeVote>9)
  {
   if (priv->InitialGain > LowestGainStage)
   {
    priv->InitialGainBackUp= priv->InitialGain;

    priv->InitialGain = (priv->InitialGain - 1);


    UpdateInitialGain(dev);
   }
   priv->DIG_NumberFallbackVote = 0;
   priv->DIG_NumberUpgradeVote=0;
  }
 }



}
