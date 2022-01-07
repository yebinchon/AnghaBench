
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct r8180_priv {int RegHiPwrUpperTh; int RegHiPwrLowerTh; scalar_t__ RegRSSIHiPwrUpperTh; scalar_t__ RegRSSIHiPwrLowerTh; char* chtxpwr_ofdm; char* chtxpwr; int UndecoratedSmoothedSS; scalar_t__ CurCCKRSSI; int bToUpdateTxPwr; scalar_t__ bCurCCKPkt; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {size_t channel; } ;
struct TYPE_4__ {TYPE_1__ current_network; } ;


 int CCK_TXAGC ;
 int OFDM_TXAGC ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,char) ;

void
DoTxHighPower(
 struct net_device *dev
 )
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u16 HiPwrUpperTh = 0;
 u16 HiPwrLowerTh = 0;
 u8 RSSIHiPwrUpperTh;
 u8 RSSIHiPwrLowerTh;
 u8 u1bTmp;
 char OfdmTxPwrIdx, CckTxPwrIdx;



 HiPwrUpperTh = priv->RegHiPwrUpperTh;
 HiPwrLowerTh = priv->RegHiPwrLowerTh;

 HiPwrUpperTh = HiPwrUpperTh * 10;
 HiPwrLowerTh = HiPwrLowerTh * 10;
 RSSIHiPwrUpperTh = priv->RegRSSIHiPwrUpperTh;
 RSSIHiPwrLowerTh = priv->RegRSSIHiPwrLowerTh;


 OfdmTxPwrIdx = priv->chtxpwr_ofdm[priv->ieee80211->current_network.channel];
 CckTxPwrIdx = priv->chtxpwr[priv->ieee80211->current_network.channel];



 if((priv->UndecoratedSmoothedSS > HiPwrUpperTh) ||
  (priv->bCurCCKPkt && (priv->CurCCKRSSI > RSSIHiPwrUpperTh)))
 {



  priv->bToUpdateTxPwr = 1;
  u1bTmp= read_nic_byte(dev, CCK_TXAGC);


  if( CckTxPwrIdx == u1bTmp)
  {
  u1bTmp = (u1bTmp > 16) ? (u1bTmp -16): 0;
  write_nic_byte(dev, CCK_TXAGC, u1bTmp);

  u1bTmp= read_nic_byte(dev, OFDM_TXAGC);
  u1bTmp = (u1bTmp > 16) ? (u1bTmp -16): 0;
  write_nic_byte(dev, OFDM_TXAGC, u1bTmp);
  }

 }
 else if((priv->UndecoratedSmoothedSS < HiPwrLowerTh) &&
  (!priv->bCurCCKPkt || priv->CurCCKRSSI < RSSIHiPwrLowerTh))
 {

  if(priv->bToUpdateTxPwr)
  {
   priv->bToUpdateTxPwr = 0;

   u1bTmp= read_nic_byte(dev, CCK_TXAGC);
   if(u1bTmp < CckTxPwrIdx)
   {


   write_nic_byte(dev, CCK_TXAGC, CckTxPwrIdx);
   }

   u1bTmp= read_nic_byte(dev, OFDM_TXAGC);
   if(u1bTmp < OfdmTxPwrIdx)
   {


   write_nic_byte(dev, OFDM_TXAGC, OfdmTxPwrIdx);
   }
  }
 }


}
