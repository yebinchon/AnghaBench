
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_8__ {size_t* slide_signal_strength; size_t slide_rssi_total; int* rx_rssi_percentage; size_t* Slide_Beacon_pwdb; size_t Slide_Beacon_Total; size_t* slide_evm; size_t slide_evm_total; size_t signal_quality; size_t last_signal_strength_inpercent; int* rx_evm_percentage; void* signal_strength; int num_process_phyinfo; } ;
struct r8192_priv {int undecorated_smoothed_pwdb; TYPE_3__ stats; TYPE_1__* ieee80211; } ;
struct ieee80211_rx_stats {unsigned int Seq_Num; size_t SignalStrength; int* RxMIMOSignalStrength; size_t RxPWDBAll; scalar_t__ SignalQuality; int* RxMIMOSignalQuality; scalar_t__ bToSelfBA; scalar_t__ bPacketBeacon; scalar_t__ bPacketToSelf; scalar_t__ bIsCCK; int bPacketMatchBSSID; void* rssi; scalar_t__ bFirstMPDU; int bIsAMPDU; } ;
struct ieee80211_hdr_3addr {int seq_ctl; } ;
struct TYPE_10__ {int UndecoratedSmoothedPWDB; } ;
struct TYPE_7__ {size_t RxPWDBAll; } ;
struct TYPE_9__ {TYPE_2__ Status; } ;
struct TYPE_6__ {int dev; } ;


 int COMP_DBG ;
 int COMP_RXDESC ;
 size_t PHY_Beacon_RSSI_SLID_WIN_MAX ;
 size_t PHY_RSSI_SLID_WIN_MAX ;
 size_t RF90_PATH_A ;
 size_t RF90_PATH_C ;
 int RT_TRACE (int ,char*,...) ;
 int Rx_Smooth_Factor ;
 unsigned int WLAN_GET_SEQ_FRAG (int ) ;
 unsigned int WLAN_GET_SEQ_SEQ (int ) ;
 int le16_to_cpu (int ) ;
 TYPE_5__* pHalData ;
 TYPE_4__* pPreviousRfd ;
 int rtl8190_process_cck_rxpathsel (struct r8192_priv*,struct ieee80211_rx_stats*) ;
 int rtl8192_phy_CheckIsLegalRFPath (int ,size_t) ;
 void* rtl819x_translate_todbm (size_t) ;
 int rtl819x_update_rxsignalstatistics8190pci (struct r8192_priv*,struct ieee80211_rx_stats*) ;

__attribute__((used)) static void rtl8192_process_phyinfo(struct r8192_priv * priv, u8* buffer,struct ieee80211_rx_stats * pprevious_stats, struct ieee80211_rx_stats * pcurrent_stats)
{
 bool bcheck = 0;
 u8 rfpath;
 u32 nspatial_stream, tmp_val;

 static u32 slide_rssi_index=0, slide_rssi_statistics=0;
 static u32 slide_evm_index=0, slide_evm_statistics=0;
 static u32 last_rssi=0, last_evm=0;




 static u32 slide_beacon_adc_pwdb_index=0, slide_beacon_adc_pwdb_statistics=0;
 static u32 last_beacon_adc_pwdb=0;

 struct ieee80211_hdr_3addr *hdr;
 u16 sc ;
 unsigned int frag,seq;
 hdr = (struct ieee80211_hdr_3addr *)buffer;
 sc = le16_to_cpu(hdr->seq_ctl);
 frag = WLAN_GET_SEQ_FRAG(sc);
 seq = WLAN_GET_SEQ_SEQ(sc);

 pcurrent_stats->Seq_Num = seq;



 if(!pprevious_stats->bIsAMPDU)
 {

  bcheck = 1;
 }else
 {
 }

 if(slide_rssi_statistics++ >= PHY_RSSI_SLID_WIN_MAX)
 {
  slide_rssi_statistics = PHY_RSSI_SLID_WIN_MAX;
  last_rssi = priv->stats.slide_signal_strength[slide_rssi_index];
  priv->stats.slide_rssi_total -= last_rssi;
 }
 priv->stats.slide_rssi_total += pprevious_stats->SignalStrength;

 priv->stats.slide_signal_strength[slide_rssi_index++] = pprevious_stats->SignalStrength;
 if(slide_rssi_index >= PHY_RSSI_SLID_WIN_MAX)
  slide_rssi_index = 0;


 tmp_val = priv->stats.slide_rssi_total/slide_rssi_statistics;
 priv->stats.signal_strength = rtl819x_translate_todbm((u8)tmp_val);
 pcurrent_stats->rssi = priv->stats.signal_strength;



 if(!pprevious_stats->bPacketMatchBSSID)
 {
  if(!pprevious_stats->bToSelfBA)
   return;
 }

 if(!bcheck)
  return;

 rtl8190_process_cck_rxpathsel(priv,pprevious_stats);




 priv->stats.num_process_phyinfo++;
 if(!pprevious_stats->bIsCCK && pprevious_stats->bPacketToSelf)
 {
  for (rfpath = RF90_PATH_A; rfpath < RF90_PATH_C; rfpath++)
  {
   if (!rtl8192_phy_CheckIsLegalRFPath(priv->ieee80211->dev, rfpath))
    continue;
   RT_TRACE(COMP_DBG,"Jacken -> pPreviousstats->RxMIMOSignalStrength[rfpath]  = %d \n" ,pprevious_stats->RxMIMOSignalStrength[rfpath] );

   if(priv->stats.rx_rssi_percentage[rfpath] == 0)
   {
    priv->stats.rx_rssi_percentage[rfpath] = pprevious_stats->RxMIMOSignalStrength[rfpath];

   }
   if(pprevious_stats->RxMIMOSignalStrength[rfpath] > priv->stats.rx_rssi_percentage[rfpath])
   {
    priv->stats.rx_rssi_percentage[rfpath] =
     ( (priv->stats.rx_rssi_percentage[rfpath]*(Rx_Smooth_Factor-1)) +
     (pprevious_stats->RxMIMOSignalStrength[rfpath])) /(Rx_Smooth_Factor);
    priv->stats.rx_rssi_percentage[rfpath] = priv->stats.rx_rssi_percentage[rfpath] + 1;
   }
   else
   {
    priv->stats.rx_rssi_percentage[rfpath] =
     ( (priv->stats.rx_rssi_percentage[rfpath]*(Rx_Smooth_Factor-1)) +
     (pprevious_stats->RxMIMOSignalStrength[rfpath])) /(Rx_Smooth_Factor);
   }
   RT_TRACE(COMP_DBG,"Jacken -> priv->RxStats.RxRSSIPercentage[rfPath]  = %d \n" ,priv->stats.rx_rssi_percentage[rfpath] );
  }
 }






 if(pprevious_stats->bPacketBeacon)
 {

  if(slide_beacon_adc_pwdb_statistics++ >= PHY_Beacon_RSSI_SLID_WIN_MAX)
  {
   slide_beacon_adc_pwdb_statistics = PHY_Beacon_RSSI_SLID_WIN_MAX;
   last_beacon_adc_pwdb = priv->stats.Slide_Beacon_pwdb[slide_beacon_adc_pwdb_index];
   priv->stats.Slide_Beacon_Total -= last_beacon_adc_pwdb;


  }
  priv->stats.Slide_Beacon_Total += pprevious_stats->RxPWDBAll;
  priv->stats.Slide_Beacon_pwdb[slide_beacon_adc_pwdb_index] = pprevious_stats->RxPWDBAll;

  slide_beacon_adc_pwdb_index++;
  if(slide_beacon_adc_pwdb_index >= PHY_Beacon_RSSI_SLID_WIN_MAX)
   slide_beacon_adc_pwdb_index = 0;
  pprevious_stats->RxPWDBAll = priv->stats.Slide_Beacon_Total/slide_beacon_adc_pwdb_statistics;
  if(pprevious_stats->RxPWDBAll >= 3)
   pprevious_stats->RxPWDBAll -= 3;
 }

 RT_TRACE(COMP_RXDESC, "Smooth %s PWDB = %d\n",
    pprevious_stats->bIsCCK? "CCK": "OFDM",
    pprevious_stats->RxPWDBAll);

 if(pprevious_stats->bPacketToSelf || pprevious_stats->bPacketBeacon || pprevious_stats->bToSelfBA)
 {
  if(priv->undecorated_smoothed_pwdb < 0)
  {
   priv->undecorated_smoothed_pwdb = pprevious_stats->RxPWDBAll;

  }

  if(pprevious_stats->RxPWDBAll > (u32)priv->undecorated_smoothed_pwdb)
  {
   priv->undecorated_smoothed_pwdb =
     ( ((priv->undecorated_smoothed_pwdb)*(Rx_Smooth_Factor-1)) +
     (pprevious_stats->RxPWDBAll)) /(Rx_Smooth_Factor);
   priv->undecorated_smoothed_pwdb = priv->undecorated_smoothed_pwdb + 1;
  }
  else
  {
   priv->undecorated_smoothed_pwdb =
     ( ((priv->undecorated_smoothed_pwdb)*(Rx_Smooth_Factor-1)) +
     (pprevious_stats->RxPWDBAll)) /(Rx_Smooth_Factor);
  }
  rtl819x_update_rxsignalstatistics8190pci(priv,pprevious_stats);
 }





 if(pprevious_stats->SignalQuality == 0)
 {
 }
 else
 {
  if(pprevious_stats->bPacketToSelf || pprevious_stats->bPacketBeacon || pprevious_stats->bToSelfBA){
   if(slide_evm_statistics++ >= PHY_RSSI_SLID_WIN_MAX){
    slide_evm_statistics = PHY_RSSI_SLID_WIN_MAX;
    last_evm = priv->stats.slide_evm[slide_evm_index];
    priv->stats.slide_evm_total -= last_evm;
   }

   priv->stats.slide_evm_total += pprevious_stats->SignalQuality;

   priv->stats.slide_evm[slide_evm_index++] = pprevious_stats->SignalQuality;
   if(slide_evm_index >= PHY_RSSI_SLID_WIN_MAX)
    slide_evm_index = 0;


   tmp_val = priv->stats.slide_evm_total/slide_evm_statistics;
   priv->stats.signal_quality = tmp_val;

   priv->stats.last_signal_strength_inpercent = tmp_val;
  }


  if(pprevious_stats->bPacketToSelf || pprevious_stats->bPacketBeacon || pprevious_stats->bToSelfBA)
  {
   for(nspatial_stream = 0; nspatial_stream<2 ; nspatial_stream++)
   {
    if(pprevious_stats->RxMIMOSignalQuality[nspatial_stream] != -1)
    {
     if(priv->stats.rx_evm_percentage[nspatial_stream] == 0)
     {
      priv->stats.rx_evm_percentage[nspatial_stream] = pprevious_stats->RxMIMOSignalQuality[nspatial_stream];
     }
     priv->stats.rx_evm_percentage[nspatial_stream] =
      ( (priv->stats.rx_evm_percentage[nspatial_stream]* (Rx_Smooth_Factor-1)) +
      (pprevious_stats->RxMIMOSignalQuality[nspatial_stream]* 1)) / (Rx_Smooth_Factor);
    }
   }
  }
 }

}
