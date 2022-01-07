
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct TYPE_10__ {long* rxSNRdB; int * received_bwtype; int numqry_phystatusHT; int numqry_phystatusCCK; int numqry_phystatus; } ;
struct r8192_priv {scalar_t__ rf_type; TYPE_1__ stats; scalar_t__* brfpath_rxenable; TYPE_2__* ieee80211; } ;
struct ieee80211_rx_stats {int bPacketMatchBSSID; int bPacketToSelf; size_t bIsCCK; int bPacketBeacon; int bToSelfBA; int* RxMIMOSignalQuality; char* cck_adc_pwdb; size_t RxPWDBAll; char RecvSignalPower; size_t SignalQuality; size_t* RxMIMOSignalStrength; char RxPower; size_t SignalStrength; } ;
typedef int rx_fwinfo_819x_pci ;
typedef TYPE_3__* prx_fwinfo_819x_pci ;
typedef int prx_desc_819x_pci ;
struct TYPE_13__ {int* trsw_gain_X; size_t* rxsnr_X; int pwdb_all; size_t* rxevm_X; size_t rxsc_sgien_exflg; } ;
typedef TYPE_4__ phy_sts_ofdm_819xpci_t ;
struct TYPE_14__ {size_t* adc_pwdb_X; int cck_agc_rpt; size_t sq_rpt; } ;
typedef TYPE_5__ phy_sts_cck_819xpci_t ;
struct TYPE_15__ {int rxsc; } ;
typedef TYPE_6__ phy_ofdm_rx_status_rxsc_sgien_exintfflag ;
struct TYPE_16__ {scalar_t__ Enable; } ;
struct TYPE_12__ {scalar_t__ RxRate; scalar_t__ BW; scalar_t__ RxHT; } ;
struct TYPE_11__ {int dev; } ;


 scalar_t__ DESC90_RATEMCS15 ;
 scalar_t__ DESC90_RATEMCS8 ;
 TYPE_9__ DM_RxPathSelTable ;
 int EVM ;
 size_t RF90_PATH_A ;
 size_t RF90_PATH_MAX ;
 scalar_t__ RF_2T4R ;
 int SignalScaleMapping (int ) ;
 int memset (struct ieee80211_rx_stats*,int ,int) ;
 int rFPGA0_XA_HSSIParameter2 ;
 size_t rtl8192_QueryBBReg (int ,int ,int) ;
 size_t rtl819x_evm_dbtopercentage (char) ;
 size_t rtl819x_query_rxpwrpercentage (char) ;
 scalar_t__ rtl819x_signal_scale_mapping (long) ;
 size_t rx_hal_is_cck_rate (TYPE_3__*) ;

__attribute__((used)) static void rtl8192_query_rxphystatus(
 struct r8192_priv * priv,
 struct ieee80211_rx_stats * pstats,
 prx_desc_819x_pci pdesc,
 prx_fwinfo_819x_pci pdrvinfo,
 struct ieee80211_rx_stats * precord_stats,
 bool bpacket_match_bssid,
 bool bpacket_toself,
 bool bPacketBeacon,
 bool bToSelfBA
 )
{

 phy_sts_ofdm_819xpci_t* pofdm_buf;
 phy_sts_cck_819xpci_t * pcck_buf;
 phy_ofdm_rx_status_rxsc_sgien_exintfflag* prxsc;
 u8 *prxpkt;
 u8 i,max_spatial_stream, tmp_rxsnr, tmp_rxevm, rxsc_sgien_exflg;
 char rx_pwr[4], rx_pwr_all=0;

 char rx_snrX, rx_evmX;
 u8 evm, pwdb_all;
 u32 RSSI, total_rssi=0;

 u8 is_cck_rate=0;
 u8 rf_rx_num = 0;


 static u8 check_reg824 = 0;
 static u32 reg824_bit9 = 0;

 priv->stats.numqry_phystatus++;

 is_cck_rate = rx_hal_is_cck_rate(pdrvinfo);


 memset(precord_stats, 0, sizeof(struct ieee80211_rx_stats));
 pstats->bPacketMatchBSSID = precord_stats->bPacketMatchBSSID = bpacket_match_bssid;
 pstats->bPacketToSelf = precord_stats->bPacketToSelf = bpacket_toself;
 pstats->bIsCCK = precord_stats->bIsCCK = is_cck_rate;
 pstats->bPacketBeacon = precord_stats->bPacketBeacon = bPacketBeacon;
 pstats->bToSelfBA = precord_stats->bToSelfBA = bToSelfBA;

 if(check_reg824 == 0)
 {
  reg824_bit9 = rtl8192_QueryBBReg(priv->ieee80211->dev, rFPGA0_XA_HSSIParameter2, 0x200);
  check_reg824 = 1;
 }


 prxpkt = (u8*)pdrvinfo;


 prxpkt += sizeof(rx_fwinfo_819x_pci);


 pcck_buf = (phy_sts_cck_819xpci_t *)prxpkt;
 pofdm_buf = (phy_sts_ofdm_819xpci_t *)prxpkt;

 pstats->RxMIMOSignalQuality[0] = -1;
 pstats->RxMIMOSignalQuality[1] = -1;
 precord_stats->RxMIMOSignalQuality[0] = -1;
 precord_stats->RxMIMOSignalQuality[1] = -1;

 if(is_cck_rate)
 {







  u8 report;




  priv->stats.numqry_phystatusCCK++;
  if(!reg824_bit9)
  {
   report = pcck_buf->cck_agc_rpt & 0xc0;
   report = report>>6;
   switch(report)
   {



    case 0x3:
     rx_pwr_all = -35 - (pcck_buf->cck_agc_rpt & 0x3e);
     break;
    case 0x2:
     rx_pwr_all = -23 - (pcck_buf->cck_agc_rpt & 0x3e);
     break;
    case 0x1:
     rx_pwr_all = -11 - (pcck_buf->cck_agc_rpt & 0x3e);
     break;
    case 0x0:
     rx_pwr_all = 8 - (pcck_buf->cck_agc_rpt & 0x3e);
     break;
   }
  }
  else
  {
   report = pcck_buf->cck_agc_rpt & 0x60;
   report = report>>5;
   switch(report)
   {
    case 0x3:
     rx_pwr_all = -35 - ((pcck_buf->cck_agc_rpt & 0x1f)<<1) ;
     break;
    case 0x2:
     rx_pwr_all = -23 - ((pcck_buf->cck_agc_rpt & 0x1f)<<1);
     break;
    case 0x1:
     rx_pwr_all = -11 - ((pcck_buf->cck_agc_rpt & 0x1f)<<1) ;
     break;
    case 0x0:
     rx_pwr_all = -8 - ((pcck_buf->cck_agc_rpt & 0x1f)<<1) ;
     break;
   }
  }

  pwdb_all = rtl819x_query_rxpwrpercentage(rx_pwr_all);
  pstats->RxPWDBAll = precord_stats->RxPWDBAll = pwdb_all;
  pstats->RecvSignalPower = rx_pwr_all;




  if(bpacket_match_bssid)
  {
   u8 sq;

   if(pstats->RxPWDBAll > 40)
   {
    sq = 100;
   }else
   {
    sq = pcck_buf->sq_rpt;

    if(pcck_buf->sq_rpt > 64)
     sq = 0;
    else if (pcck_buf->sq_rpt < 20)
     sq = 100;
    else
     sq = ((64-sq) * 100) / 44;
   }
   pstats->SignalQuality = precord_stats->SignalQuality = sq;
   pstats->RxMIMOSignalQuality[0] = precord_stats->RxMIMOSignalQuality[0] = sq;
   pstats->RxMIMOSignalQuality[1] = precord_stats->RxMIMOSignalQuality[1] = -1;
  }
 }
 else
 {
  priv->stats.numqry_phystatusHT++;



  for(i=RF90_PATH_A; i<RF90_PATH_MAX; i++)
  {

   if (priv->brfpath_rxenable[i])
    rf_rx_num++;
   rx_pwr[i] = ((pofdm_buf->trsw_gain_X[i]&0x3F)*2) - 110;



   tmp_rxsnr = pofdm_buf->rxsnr_X[i];
   rx_snrX = (char)(tmp_rxsnr);
   rx_snrX /= 2;
   priv->stats.rxSNRdB[i] = (long)rx_snrX;


   RSSI = rtl819x_query_rxpwrpercentage(rx_pwr[i]);
   if (priv->brfpath_rxenable[i])
    total_rssi += RSSI;


   if(bpacket_match_bssid)
   {
    pstats->RxMIMOSignalStrength[i] =(u8) RSSI;
    precord_stats->RxMIMOSignalStrength[i] =(u8) RSSI;
   }
  }







  rx_pwr_all = (((pofdm_buf->pwdb_all ) >> 1 )& 0x7f) -106;
  pwdb_all = rtl819x_query_rxpwrpercentage(rx_pwr_all);

  pstats->RxPWDBAll = precord_stats->RxPWDBAll = pwdb_all;
  pstats->RxPower = precord_stats->RxPower = rx_pwr_all;
  pstats->RecvSignalPower = rx_pwr_all;



  if(pdrvinfo->RxHT && pdrvinfo->RxRate>=DESC90_RATEMCS8 &&
   pdrvinfo->RxRate<=DESC90_RATEMCS15)
   max_spatial_stream = 2;
  else
   max_spatial_stream = 1;

  for(i=0; i<max_spatial_stream; i++)
  {
   tmp_rxevm = pofdm_buf->rxevm_X[i];
   rx_evmX = (char)(tmp_rxevm);




   rx_evmX /= 2;

   evm = rtl819x_evm_dbtopercentage(rx_evmX);



   if(bpacket_match_bssid)
   {
    if(i==0)
     pstats->SignalQuality = precord_stats->SignalQuality = (u8)(evm & 0xff);
    pstats->RxMIMOSignalQuality[i] = precord_stats->RxMIMOSignalQuality[i] = (u8)(evm & 0xff);
   }
  }



  rxsc_sgien_exflg = pofdm_buf->rxsc_sgien_exflg;
  prxsc = (phy_ofdm_rx_status_rxsc_sgien_exintfflag *)&rxsc_sgien_exflg;
  if(pdrvinfo->BW)
   priv->stats.received_bwtype[1+prxsc->rxsc]++;
  else
   priv->stats.received_bwtype[0]++;
 }



 if(is_cck_rate)
 {
  pstats->SignalStrength = precord_stats->SignalStrength = (u8)(rtl819x_signal_scale_mapping((long)pwdb_all));

 }
 else
 {


  if (rf_rx_num != 0)
   pstats->SignalStrength = precord_stats->SignalStrength = (u8)(rtl819x_signal_scale_mapping((long)(total_rssi/=rf_rx_num)));
 }
}
