
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_tim_parameters {int dummy; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct TYPE_7__ {int active; int supported; int old_param_count; int param_count; } ;
struct TYPE_6__ {int bdHTCapLen; int bdHTInfoLen; int bdRT2RTLongSlotTime; int bdHTSpecVer; TYPE_3__* bdHTInfoBuf; TYPE_3__* bdHTCapBuf; int bdRT2RTAggregation; int bdSupportHT; } ;
struct TYPE_8__ {scalar_t__ ac_aci_acm_aifsn; } ;
struct ieee80211_network {int rates_len; int rates_ex_len; int ssid_len; int flags; int berp_info_valid; int wpa_ie_len; int rsn_ie_len; int QoS_Enable; int CountryIeLen; int BssCcxVerNumber; int bWithCcxVerNum; TYPE_3__* MBssid; int bMBssidValid; int MBssidMask; int bCcxRmEnable; TYPE_3__* CcxRmState; int bCkipSupported; int bWithAironetIE; TYPE_3__* CountryIeBuf; int Turbo_Enable; TYPE_3__* wmm_param; int wmm_info; TYPE_2__ qos_data; TYPE_3__* ssid; int last_scanned; TYPE_3__* rsn_ie; TYPE_3__* wpa_ie; int unknown_cap_exist; int cisco_cap_exist; int marvell_cap_exist; int realtek_cap_exit; int atheros_cap_exist; int ralink_cap_exist; int broadcom_cap_exist; TYPE_1__ bssht; TYPE_3__ tim; int * last_dtim_sta_time; int dtim_data; int dtim_period; int atim_window; int listen_interval; int beacon_interval; int erp_value; int * time_stamp; int mode; TYPE_3__* rates_ex; TYPE_3__* rates; int capability; TYPE_3__ stats; } ;


 int IEEE80211_DEBUG_QOS (char*,...) ;
 int NETWORK_HAS_ERP_VALUE ;
 int NETWORK_HAS_QOS_MASK ;
 int WME_AC_PRAM_LEN ;
 int jiffies ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static inline void update_network(struct ieee80211_network *dst,
      struct ieee80211_network *src)
{
 int qos_active;
 u8 old_param;

 memcpy(&dst->stats, &src->stats, sizeof(struct ieee80211_rx_stats));
 dst->capability = src->capability;
 memcpy(dst->rates, src->rates, src->rates_len);
 dst->rates_len = src->rates_len;
 memcpy(dst->rates_ex, src->rates_ex, src->rates_ex_len);
 dst->rates_ex_len = src->rates_ex_len;
 if(src->ssid_len > 0)
 {
  memset(dst->ssid, 0, dst->ssid_len);
  dst->ssid_len = src->ssid_len;
  memcpy(dst->ssid, src->ssid, src->ssid_len);
 }
 dst->mode = src->mode;
 dst->flags = src->flags;
 dst->time_stamp[0] = src->time_stamp[0];
 dst->time_stamp[1] = src->time_stamp[1];
 if (src->flags & NETWORK_HAS_ERP_VALUE)
 {
  dst->erp_value = src->erp_value;
  dst->berp_info_valid = src->berp_info_valid = 1;
 }
 dst->beacon_interval = src->beacon_interval;
 dst->listen_interval = src->listen_interval;
 dst->atim_window = src->atim_window;
 dst->dtim_period = src->dtim_period;
 dst->dtim_data = src->dtim_data;
 dst->last_dtim_sta_time[0] = src->last_dtim_sta_time[0];
 dst->last_dtim_sta_time[1] = src->last_dtim_sta_time[1];
 memcpy(&dst->tim, &src->tim, sizeof(struct ieee80211_tim_parameters));

        dst->bssht.bdSupportHT = src->bssht.bdSupportHT;
 dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
 dst->bssht.bdHTCapLen= src->bssht.bdHTCapLen;
 memcpy(dst->bssht.bdHTCapBuf,src->bssht.bdHTCapBuf,src->bssht.bdHTCapLen);
 dst->bssht.bdHTInfoLen= src->bssht.bdHTInfoLen;
 memcpy(dst->bssht.bdHTInfoBuf,src->bssht.bdHTInfoBuf,src->bssht.bdHTInfoLen);
 dst->bssht.bdHTSpecVer = src->bssht.bdHTSpecVer;
 dst->bssht.bdRT2RTLongSlotTime = src->bssht.bdRT2RTLongSlotTime;
 dst->broadcom_cap_exist = src->broadcom_cap_exist;
 dst->ralink_cap_exist = src->ralink_cap_exist;
 dst->atheros_cap_exist = src->atheros_cap_exist;
 dst->realtek_cap_exit = src->realtek_cap_exit;
 dst->marvell_cap_exist = src->marvell_cap_exist;
 dst->cisco_cap_exist = src->cisco_cap_exist;
 dst->unknown_cap_exist = src->unknown_cap_exist;
 memcpy(dst->wpa_ie, src->wpa_ie, src->wpa_ie_len);
 dst->wpa_ie_len = src->wpa_ie_len;
 memcpy(dst->rsn_ie, src->rsn_ie, src->rsn_ie_len);
 dst->rsn_ie_len = src->rsn_ie_len;

 dst->last_scanned = jiffies;


 qos_active = dst->qos_data.active;

 old_param = dst->qos_data.param_count;
 if(dst->flags & NETWORK_HAS_QOS_MASK){




 }
 else {
  dst->qos_data.supported = src->qos_data.supported;
  dst->qos_data.param_count = src->qos_data.param_count;
 }

 if(dst->qos_data.supported == 1) {
  dst->QoS_Enable = 1;
  if(dst->ssid_len)
   IEEE80211_DEBUG_QOS
    ("QoS the network %s is QoS supported\n",
    dst->ssid);
  else
   IEEE80211_DEBUG_QOS
    ("QoS the network is QoS supported\n");
 }
 dst->qos_data.active = qos_active;
 dst->qos_data.old_param_count = old_param;



 dst->wmm_info = src->wmm_info;
 if(src->wmm_param[0].ac_aci_acm_aifsn|| src->wmm_param[1].ac_aci_acm_aifsn|| src->wmm_param[2].ac_aci_acm_aifsn|| src->wmm_param[1].ac_aci_acm_aifsn) {



   memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
 }




 dst->Turbo_Enable = src->Turbo_Enable;

 dst->CountryIeLen = src->CountryIeLen;
 memcpy(dst->CountryIeBuf, src->CountryIeBuf, src->CountryIeLen);


 dst->bWithAironetIE = src->bWithAironetIE;
 dst->bCkipSupported = src->bCkipSupported;
 memcpy(dst->CcxRmState,src->CcxRmState,2);
 dst->bCcxRmEnable = src->bCcxRmEnable;
 dst->MBssidMask = src->MBssidMask;
 dst->bMBssidValid = src->bMBssidValid;
 memcpy(dst->MBssid,src->MBssid,6);
 dst->bWithCcxVerNum = src->bWithCcxVerNum;
 dst->BssCcxVerNumber = src->BssCcxVerNumber;

}
