
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {long* rxSNRdB; int * received_bwtype; int numqry_phystatusHT; int numqry_phystatusCCK; int numqry_phystatus; } ;
struct r8192_priv {TYPE_1__ stats; scalar_t__* brfpath_rxenable; int bCckHighPower; } ;
struct ieee80211_rx_stats {int bPacketMatchBSSID; int bPacketToSelf; int bIsCCK; int bPacketBeacon; int bToSelfBA; int* RxMIMOSignalQuality; int RxPWDBAll; char RecvSignalPower; int SignalQuality; int* RxMIMOSignalStrength; char RxPower; int SignalStrength; } ;
struct TYPE_9__ {int* cfosho; int* gain_trsw; int* rxsnr; int pwdb_all; int rxsc; int * rxevm; } ;
typedef TYPE_2__ rx_drvinfo_819x_usb ;
struct TYPE_10__ {scalar_t__ BW; int RxMCS; scalar_t__ RxHT; } ;
typedef TYPE_3__ rx_desc_819x_usb ;
struct TYPE_11__ {int cck_agc_rpt; int sq_rpt; } ;
typedef TYPE_4__ phy_sts_cck_819xusb_t ;
typedef int phy_ofdm_rx_status_rxsc_sgien_exintfflag ;


 int COMP_RF ;
 int DESC92S_RATEMCS15 ;
 int DESC92S_RATEMCS8 ;
 int RF90_PATH_A ;
 int RF90_PATH_MAX ;
 int RT_TRACE (int ,char*,int,char,...) ;
 scalar_t__ TRUE ;
 int memset (struct ieee80211_rx_stats*,int ,int) ;
 int rtl819x_evm_dbtopercentage (int ) ;
 int rtl819x_query_rxpwrpercentage (char) ;
 scalar_t__ rtl819x_signal_scale_mapping (long) ;
 int rx_hal_is_cck_rate (TYPE_3__*) ;

__attribute__((used)) static void rtl8192SU_query_rxphystatus(
 struct r8192_priv * priv,
 struct ieee80211_rx_stats * pstats,
 rx_desc_819x_usb *pDesc,
 rx_drvinfo_819x_usb * pdrvinfo,
 struct ieee80211_rx_stats * precord_stats,
 bool bpacket_match_bssid,
 bool bpacket_toself,
 bool bPacketBeacon,
 bool bToSelfBA
 )
{


 phy_sts_cck_819xusb_t * pcck_buf;
 phy_ofdm_rx_status_rxsc_sgien_exintfflag* prxsc;


 u8 i, max_spatial_stream, rxsc_sgien_exflg;
 char rx_pwr[4], rx_pwr_all=0;


 u8 evm, pwdb_all;
 u32 RSSI, total_rssi=0;

 u8 is_cck_rate=0;
 u8 rf_rx_num = 0;



 priv->stats.numqry_phystatus++;

 is_cck_rate = rx_hal_is_cck_rate(pDesc);


 memset(precord_stats, 0, sizeof(struct ieee80211_rx_stats));
 pstats->bPacketMatchBSSID = precord_stats->bPacketMatchBSSID = bpacket_match_bssid;
 pstats->bPacketToSelf = precord_stats->bPacketToSelf = bpacket_toself;
 pstats->bIsCCK = precord_stats->bIsCCK = is_cck_rate;
 pstats->bPacketBeacon = precord_stats->bPacketBeacon = bPacketBeacon;
 pstats->bToSelfBA = precord_stats->bToSelfBA = bToSelfBA;


 pstats->RxMIMOSignalQuality[0] = -1;
 pstats->RxMIMOSignalQuality[1] = -1;
 precord_stats->RxMIMOSignalQuality[0] = -1;
 precord_stats->RxMIMOSignalQuality[1] = -1;

 if(is_cck_rate)
 {
  u8 report;



  pcck_buf = (phy_sts_cck_819xusb_t *)pdrvinfo;
  priv->stats.numqry_phystatusCCK++;

  if(!priv->bCckHighPower)
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
   report = pdrvinfo->cfosho[0] & 0x60;
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


  priv->brfpath_rxenable[0] = priv->brfpath_rxenable[1] = TRUE;





  for(i=RF90_PATH_A; i<RF90_PATH_MAX; i++)
  {

   if (priv->brfpath_rxenable[i])
    rf_rx_num++;
   rx_pwr[i] = ((pdrvinfo->gain_trsw[i]&0x3F)*2) - 110;


   RSSI = rtl819x_query_rxpwrpercentage(rx_pwr[i]);
   total_rssi += RSSI;
   RT_TRACE(COMP_RF, "RF-%d RXPWR=%x RSSI=%d\n", i, rx_pwr[i], RSSI);






   priv->stats.rxSNRdB[i] = (long)(pdrvinfo->rxsnr[i]/2);







   {
    pstats->RxMIMOSignalStrength[i] =(u8) RSSI;
    precord_stats->RxMIMOSignalStrength[i] =(u8) RSSI;
   }
  }
  rx_pwr_all = (((pdrvinfo->pwdb_all ) >> 1 )& 0x7f) -106;
  pwdb_all = rtl819x_query_rxpwrpercentage(rx_pwr_all);

  pstats->RxPWDBAll = precord_stats->RxPWDBAll = pwdb_all;
  pstats->RxPower = precord_stats->RxPower = rx_pwr_all;
  pstats->RecvSignalPower = rx_pwr_all;






   if(pDesc->RxHT && pDesc->RxMCS>=DESC92S_RATEMCS8 &&
    pDesc->RxMCS<=DESC92S_RATEMCS15)
   max_spatial_stream = 2;
  else
   max_spatial_stream = 1;

  for(i=0; i<max_spatial_stream; i++)
  {
   evm = rtl819x_evm_dbtopercentage( (pdrvinfo->rxevm[i] ));
   RT_TRACE(COMP_RF, "RXRATE=%x RXEVM=%x EVM=%s%d\n", pDesc->RxMCS, pdrvinfo->rxevm[i], "%", evm);


   {
    if(i==0)
     pstats->SignalQuality = precord_stats->SignalQuality = (u8)(evm & 0xff);
    pstats->RxMIMOSignalQuality[i] = precord_stats->RxMIMOSignalQuality[i] = (u8)(evm & 0xff);
   }
  }




  prxsc = (phy_ofdm_rx_status_rxsc_sgien_exintfflag *)&rxsc_sgien_exflg;

  if(pDesc->BW)
   priv->stats.received_bwtype[1+pdrvinfo->rxsc]++;
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
