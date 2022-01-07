
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct r8180_priv {int RateAdaptivePeriod; int CurrRetryCnt; unsigned long NumTxOkTotal; unsigned long LastTxokCnt; unsigned long LastRxokCnt; long Stats_RecvSignalPower; int CurrentOperaRate; int LastRetryCnt; int TryupingCountNoData; int LastFailTxRate; int LastFailTxRateSS; int FailTxRateCount; int bTryuping; scalar_t__ LastTxThroughput; scalar_t__ TryupingCount; scalar_t__ TryDownCountLowData; int LastRetryRate; int bUpdateARFR; char* chtxpwr_ofdm; char* chtxpwr; int bEnhanceTxPwr; int InitialGain; int RegBModeGainStage; int InitialGainBackUp; TYPE_2__* ieee80211; scalar_t__ NumTxOkBytesTotal; scalar_t__ LastTxOKBytes; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int HighestOperaRate; size_t channel; } ;
struct TYPE_4__ {unsigned long NumRxOkTotal; int rate; TYPE_1__ current_network; } ;


 int ARFR ;
 int CCK_TXAGC ;
 int GetDegradeTxRate (struct net_device*,int) ;
 void* GetUpgradeTxRate (struct net_device*,int) ;
 scalar_t__ MgntIsCckRate (int) ;
 int OFDM_TXAGC ;
 int RATE_ADAPTIVE_TIMER_PERIOD ;
 int UpdateInitialGain (struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int jiffies ;
 int printk (char*,...) ;
 scalar_t__ read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,scalar_t__) ;
 int write_nic_word (struct net_device*,int ,int) ;

void
StaRateAdaptive87SE(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 unsigned long CurrTxokCnt;
 u16 CurrRetryCnt;
 u16 CurrRetryRate;

 unsigned long CurrRxokCnt;
 bool bTryUp = 0;
 bool bTryDown = 0;
 u8 TryUpTh = 1;
 u8 TryDownTh = 2;
 u32 TxThroughput;
 long CurrSignalStrength;
 bool bUpdateInitialGain = 0;
     u8 u1bOfdm=0, u1bCck = 0;
 char OfdmTxPwrIdx, CckTxPwrIdx;

 priv->RateAdaptivePeriod= RATE_ADAPTIVE_TIMER_PERIOD;


 CurrRetryCnt = priv->CurrRetryCnt;
 CurrTxokCnt = priv->NumTxOkTotal - priv->LastTxokCnt;
 CurrRxokCnt = priv->ieee80211->NumRxOkTotal - priv->LastRxokCnt;
 CurrSignalStrength = priv->Stats_RecvSignalPower;
 TxThroughput = (u32)(priv->NumTxOkBytesTotal - priv->LastTxOKBytes);
 priv->LastTxOKBytes = priv->NumTxOkBytesTotal;
 priv->CurrentOperaRate = priv->ieee80211->rate/5;


 if (CurrTxokCnt>0)
 {
  CurrRetryRate = (u16)(CurrRetryCnt*100/CurrTxokCnt);
 }
 else
 {
  CurrRetryRate = (u16)(CurrRetryCnt*100/1);
 }
 priv->LastRetryCnt = priv->CurrRetryCnt;
 priv->LastTxokCnt = priv->NumTxOkTotal;
 priv->LastRxokCnt = priv->ieee80211->NumRxOkTotal;
 priv->CurrRetryCnt = 0;


 if (CurrRetryRate==0 && CurrTxokCnt == 0)
 {



  priv->TryupingCountNoData++;



  if (priv->TryupingCountNoData>30)
  {
   priv->TryupingCountNoData = 0;
    priv->CurrentOperaRate = GetUpgradeTxRate(dev, priv->CurrentOperaRate);

   priv->LastFailTxRate = 0;
   priv->LastFailTxRateSS = -200;
   priv->FailTxRateCount = 0;
  }
  goto SetInitialGain;
 }
        else
 {
  priv->TryupingCountNoData=0;
 }
 if(priv->CurrentOperaRate == 22 || priv->CurrentOperaRate == 72)
 {
  TryUpTh += 9;
 }



 if(MgntIsCckRate(priv->CurrentOperaRate) || priv->CurrentOperaRate == 36)
 {
   TryDownTh += 1;
 }


 if (priv->bTryuping == 1)
 {







  if ( (CurrRetryRate > 25) && TxThroughput < priv->LastTxThroughput)
  {

   bTryDown = 1;



  }
  else
  {
   priv->bTryuping = 0;
  }
 }
 else if (CurrSignalStrength > -47 && (CurrRetryRate < 50))
 {
  if(priv->CurrentOperaRate != priv->ieee80211->current_network.HighestOperaRate )
  {
   bTryUp = 1;

   priv->TryupingCount += TryUpTh;
  }


 }
 else if(CurrTxokCnt > 9 && CurrTxokCnt< 100 && CurrRetryRate >= 600)
 {




  bTryDown = 1;

  priv->TryDownCountLowData += TryDownTh;

 }
 else if ( priv->CurrentOperaRate == 108 )
 {


  if ( (CurrRetryRate>26)&&(priv->LastRetryRate>25))

  {

   bTryDown = 1;
  }

  else if ( (CurrRetryRate>17)&&(priv->LastRetryRate>16) && (CurrSignalStrength > -72))

  {

   bTryDown = 1;
  }

  if(bTryDown && (CurrSignalStrength < -75))
  {
   priv->TryDownCountLowData += TryDownTh;
  }


 }
 else if ( priv->CurrentOperaRate == 96 )
 {


  if ( ((CurrRetryRate>48) && (priv->LastRetryRate>47)))


  {

   bTryDown = 1;
  }

  else if ( ((CurrRetryRate>21) && (priv->LastRetryRate>20)) && (CurrSignalStrength > -74))
  {

   bTryDown = 1;
  }
  else if((CurrRetryRate> (priv->LastRetryRate + 50 )) && (priv->FailTxRateCount >2 ))

  {
   bTryDown = 1;
   priv->TryDownCountLowData += TryDownTh;
  }
  else if ( (CurrRetryRate<8) && (priv->LastRetryRate<8) )

  {
   bTryUp = 1;
  }

  if(bTryDown && (CurrSignalStrength < -75))
  {
   priv->TryDownCountLowData += TryDownTh;
  }

 }
 else if ( priv->CurrentOperaRate == 72 )
 {

  if ( (CurrRetryRate>43) && (priv->LastRetryRate>41))

  {

   bTryDown = 1;
  }
  else if((CurrRetryRate> (priv->LastRetryRate + 50 )) && (priv->FailTxRateCount >2 ))

  {
   bTryDown = 1;
   priv->TryDownCountLowData += TryDownTh;
  }
  else if ( (CurrRetryRate<15) && (priv->LastRetryRate<16))

  {
   bTryUp = 1;
  }

  if(bTryDown && (CurrSignalStrength < -80))
  {
   priv->TryDownCountLowData += TryDownTh;
  }

 }
 else if ( priv->CurrentOperaRate == 48 )
 {


  if ( ((CurrRetryRate>63) && (priv->LastRetryRate>62)))

  {

   bTryDown = 1;
  }

  else if ( ((CurrRetryRate>33) && (priv->LastRetryRate>32)) && (CurrSignalStrength > -82) )

  {

   bTryDown = 1;
  }
  else if((CurrRetryRate> (priv->LastRetryRate + 50 )) && (priv->FailTxRateCount >2 ))


  {
   bTryDown = 1;
   priv->TryDownCountLowData += TryDownTh;
  }
    else if ( (CurrRetryRate<20) && (priv->LastRetryRate<21))

  {
   bTryUp = 1;
  }

  if(bTryDown && (CurrSignalStrength < -82))
  {
   priv->TryDownCountLowData += TryDownTh;
  }

 }
 else if ( priv->CurrentOperaRate == 36 )
 {




  if ( ((CurrRetryRate>85) && (priv->LastRetryRate>86)))

  {

   bTryDown = 1;
  }

  else if((CurrRetryRate> (priv->LastRetryRate + 50 )) && (priv->FailTxRateCount >2 ))

  {
   bTryDown = 1;
   priv->TryDownCountLowData += TryDownTh;
  }
  else if ( (CurrRetryRate<22) && (priv->LastRetryRate<23))

  {
   bTryUp = 1;
  }

 }
 else if ( priv->CurrentOperaRate == 22 )
 {

  if (CurrRetryRate>95)

  {
   bTryDown = 1;
  }
  else if ( (CurrRetryRate<29) && (priv->LastRetryRate <30) )

   {
   bTryUp = 1;
   }

  }
 else if ( priv->CurrentOperaRate == 11 )
 {

  if (CurrRetryRate>149)

  {
   bTryDown = 1;
  }
  else if ( (CurrRetryRate<60) && (priv->LastRetryRate < 65))


   {
   bTryUp = 1;
   }

  }
 else if ( priv->CurrentOperaRate == 4 )
 {

  if((CurrRetryRate>99) && (priv->LastRetryRate>99))

  {
   bTryDown = 1;
  }
  else if ( (CurrRetryRate < 65) && (priv->LastRetryRate < 70))

  {
   bTryUp = 1;
  }

 }
 else if ( priv->CurrentOperaRate == 2 )
 {

  if( (CurrRetryRate<70) && (priv->LastRetryRate<75))

  {
   bTryUp = 1;
  }

 }

 if(bTryUp && bTryDown)
     printk("StaRateAdaptive87B(): Tx Rate tried upping and downing simultaneously!\n");




 if(!bTryUp && !bTryDown && (priv->TryupingCount == 0) && (priv->TryDownCountLowData == 0)
  && priv->CurrentOperaRate != priv->ieee80211->current_network.HighestOperaRate && priv->FailTxRateCount < 2)
 {
  if(jiffies% (CurrRetryRate + 101) == 0)
  {
   bTryUp = 1;
   priv->bTryuping = 1;

  }
 }


 if(bTryUp)
 {
  priv->TryupingCount++;
  priv->TryDownCountLowData = 0;

  {





  }
  if((priv->TryupingCount > (TryUpTh + priv->FailTxRateCount * priv->FailTxRateCount)) ||
   (CurrSignalStrength > priv->LastFailTxRateSS) || priv->bTryuping)
  {
   priv->TryupingCount = 0;



   if(priv->CurrentOperaRate == 22)
    bUpdateInitialGain = 1;




   if( ((priv->CurrentOperaRate == 72) || (priv->CurrentOperaRate == 48) || (priv->CurrentOperaRate == 36)) &&
    (priv->FailTxRateCount > 2) )
    priv->RateAdaptivePeriod= (RATE_ADAPTIVE_TIMER_PERIOD/2);




   priv->CurrentOperaRate = GetUpgradeTxRate(dev, priv->CurrentOperaRate);



   if(priv->CurrentOperaRate ==36)
   {
    priv->bUpdateARFR=1;
    write_nic_word(dev, ARFR, 0x0F8F);

   }
   else if(priv->bUpdateARFR)
   {
    priv->bUpdateARFR=0;
    write_nic_word(dev, ARFR, 0x0FFF);

   }


   if(priv->LastFailTxRate != priv->CurrentOperaRate)
   {
    priv->LastFailTxRate = priv->CurrentOperaRate;
    priv->FailTxRateCount = 0;
    priv->LastFailTxRateSS = -200;
   }
  }
 }
 else
 {
  if(priv->TryupingCount > 0)
   priv->TryupingCount --;
 }

 if(bTryDown)
 {
  priv->TryDownCountLowData++;
  priv->TryupingCount = 0;
  {



  }


  if(priv->TryDownCountLowData > TryDownTh || priv->bTryuping)
  {
   priv->TryDownCountLowData = 0;
   priv->bTryuping = 0;

   if(priv->LastFailTxRate == priv->CurrentOperaRate)
   {
    priv->FailTxRateCount ++;

    if(CurrSignalStrength > priv->LastFailTxRateSS)
    {
     priv->LastFailTxRateSS = CurrSignalStrength;
    }
   }
   else
   {
    priv->LastFailTxRate = priv->CurrentOperaRate;
    priv->FailTxRateCount = 1;
    priv->LastFailTxRateSS = CurrSignalStrength;
   }
   priv->CurrentOperaRate = GetDegradeTxRate(dev, priv->CurrentOperaRate);



   if( (CurrSignalStrength < -80) && (priv->CurrentOperaRate > 72 ))
   {
    priv->CurrentOperaRate = 72;

   }


   if(priv->CurrentOperaRate ==36)
   {
    priv->bUpdateARFR=1;
    write_nic_word(dev, ARFR, 0x0F8F);

   }
   else if(priv->bUpdateARFR)
   {
    priv->bUpdateARFR=0;
    write_nic_word(dev, ARFR, 0x0FFF);

   }




   if(MgntIsCckRate(priv->CurrentOperaRate))
   {
    bUpdateInitialGain = 1;
   }

  }
 }
 else
 {
  if(priv->TryDownCountLowData > 0)
   priv->TryDownCountLowData --;
 }



 if(priv->FailTxRateCount >= 0x15 ||
  (!bTryUp && !bTryDown && priv->TryDownCountLowData == 0 && priv->TryupingCount && priv->FailTxRateCount > 0x6))
 {
  priv->FailTxRateCount --;
 }


 OfdmTxPwrIdx = priv->chtxpwr_ofdm[priv->ieee80211->current_network.channel];
 CckTxPwrIdx = priv->chtxpwr[priv->ieee80211->current_network.channel];


 if((priv->CurrentOperaRate < 96) &&(priv->CurrentOperaRate > 22))
 {
  u1bCck = read_nic_byte(dev, CCK_TXAGC);
  u1bOfdm = read_nic_byte(dev, OFDM_TXAGC);


  if(u1bCck == CckTxPwrIdx )
  {
   if(u1bOfdm != (OfdmTxPwrIdx+2) )
   {
   priv->bEnhanceTxPwr= 1;
   u1bOfdm = ((u1bOfdm+2) > 35) ? 35: (u1bOfdm+2);
   write_nic_byte(dev, OFDM_TXAGC, u1bOfdm);

   }
  }

  else if(u1bCck < CckTxPwrIdx)
  {
   if(!priv->bEnhanceTxPwr)
   {
    priv->bEnhanceTxPwr= 1;
    u1bOfdm = ((u1bOfdm+2) > 35) ? 35: (u1bOfdm+2);
    write_nic_byte(dev, OFDM_TXAGC, u1bOfdm);

   }
  }
 }
 else if(priv->bEnhanceTxPwr)
 {
  u1bCck = read_nic_byte(dev, CCK_TXAGC);
  u1bOfdm = read_nic_byte(dev, OFDM_TXAGC);


  if(u1bCck == CckTxPwrIdx )
  {
  priv->bEnhanceTxPwr= 0;
  write_nic_byte(dev, OFDM_TXAGC, OfdmTxPwrIdx);

  }

  else if(u1bCck < CckTxPwrIdx)
  {
   priv->bEnhanceTxPwr= 0;
   u1bOfdm = ((u1bOfdm-2) > 0) ? (u1bOfdm-2): 0;
   write_nic_byte(dev, OFDM_TXAGC, u1bOfdm);


  }
 }





SetInitialGain:
 if(bUpdateInitialGain)
 {
  if(MgntIsCckRate(priv->CurrentOperaRate))
  {
   if(priv->InitialGain > priv->RegBModeGainStage)
   {
    priv->InitialGainBackUp= priv->InitialGain;

    if(CurrSignalStrength < -85)
    {

     priv->InitialGain = priv->RegBModeGainStage;
    }
    else if(priv->InitialGain > priv->RegBModeGainStage + 1)
    {
     priv->InitialGain -= 2;
    }
    else
    {
     priv->InitialGain --;
    }
    printk("StaRateAdaptive87SE(): update init_gain to index %d for date rate %d\n",priv->InitialGain, priv->CurrentOperaRate);
    UpdateInitialGain(dev);
   }
  }
  else
  {
   if(priv->InitialGain < 4)
   {
    priv->InitialGainBackUp= priv->InitialGain;

    priv->InitialGain ++;
    printk("StaRateAdaptive87SE(): update init_gain to index %d for date rate %d\n",priv->InitialGain, priv->CurrentOperaRate);
    UpdateInitialGain(dev);
   }
  }
 }


 priv->LastRetryRate = CurrRetryRate;
 priv->LastTxThroughput = TxThroughput;
 priv->ieee80211->rate = priv->CurrentOperaRate * 5;
}
