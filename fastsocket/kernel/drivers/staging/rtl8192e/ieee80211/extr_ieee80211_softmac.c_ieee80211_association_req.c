
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_11__ {scalar_t__ supported; } ;
struct ieee80211_network {int BssCcxVerNumber; int ssid_len; int* bssid; int capability; int* ssid; scalar_t__ bCcxRmEnable; scalar_t__ bCkipSupported; TYPE_4__ qos_data; scalar_t__ Turbo_Enable; } ;
struct ieee80211_device {int wpa_ie_len; size_t tx_keyidx; int tx_headroom; int* ap_mac_addr; int* wpa_ie; TYPE_6__* pHTInfo; scalar_t__ short_slot; TYPE_1__* dev; scalar_t__ qos_support; scalar_t__ host_encrypt; struct ieee80211_crypt_data** crypt; } ;
struct ieee80211_crypt_data {TYPE_5__* ops; } ;
struct TYPE_9__ {int duration_id; int* addr1; int* addr2; int* addr3; int frame_ctl; } ;
struct ieee80211_assoc_request_frame {int listen_interval; TYPE_3__* info_element; int capability; TYPE_2__ header; } ;
struct TYPE_14__ {int* Octet; int Length; } ;
struct TYPE_13__ {int* szRT2RTAggBuffer; scalar_t__ ePeerHTSpecVer; scalar_t__ bCurrentRT2RTAggregation; scalar_t__ bEnableHT; scalar_t__ bCurrentHTSupport; int SelfHTCap; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_10__ {int len; int id; } ;
struct TYPE_8__ {int* dev_addr; } ;
typedef TYPE_7__ OCTET_STRING ;
typedef int CcxVerNumBuf ;
typedef int CcxRmCapBuf ;
typedef int CcxAironetBuf ;
typedef int AironetIeOui ;


 int ETH_ALEN ;
 int HTConstructCapabilityElement (struct ieee80211_device*,int*,int*,int) ;
 int HTConstructRT2RTAggElement (struct ieee80211_device*,int*,int*) ;
 scalar_t__ HT_SPEC_VER_EWC ;
 int IEEE80211_STYPE_ASSOC_REQ ;
 size_t IE_CISCO_FLAG_POSITION ;
 int MFIE_TYPE_AIRONET ;
 void* MFIE_TYPE_GENERIC ;
 int MFIE_TYPE_HT_CAP ;
 int MFIE_TYPE_SSID ;
 int SUPPORT_CKIP_MIC ;
 int SUPPORT_CKIP_PK ;
 int WLAN_CAPABILITY_BSS ;
 int WLAN_CAPABILITY_PRIVACY ;
 int WLAN_CAPABILITY_QOS ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_SHORT_SLOT ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int ieee80211_MFIE_Brate (struct ieee80211_device*,int**) ;
 int ieee80211_MFIE_Grate (struct ieee80211_device*,int**) ;
 unsigned int ieee80211_MFIE_rate_len (struct ieee80211_device*) ;
 int ieee80211_TURBO_Info (struct ieee80211_device*,int**) ;
 int ieee80211_WMM_Info (struct ieee80211_device*,int**) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ strcmp (int ,char*) ;

inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beacon,struct ieee80211_device *ieee)
{
 struct sk_buff *skb;


 struct ieee80211_assoc_request_frame *hdr;
 u8 *tag;






 u8* ht_cap_buf = ((void*)0);
 u8 ht_cap_len=0;
 u8* realtek_ie_buf=((void*)0);
 u8 realtek_ie_len=0;
 int wpa_ie_len= ieee->wpa_ie_len;
 unsigned int ckip_ie_len=0;
 unsigned int ccxrm_ie_len=0;
 unsigned int cxvernum_ie_len=0;
 struct ieee80211_crypt_data* crypt;
 int encrypt;

 unsigned int rate_len = ieee80211_MFIE_rate_len(ieee);
 unsigned int wmm_info_len = beacon->qos_data.supported?9:0;




 int len = 0;

 crypt = ieee->crypt[ieee->tx_keyidx];
 encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name,"WEP") || wpa_ie_len));


 if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
 {
  ht_cap_buf = (u8*)&(ieee->pHTInfo->SelfHTCap);
  ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
  HTConstructCapabilityElement(ieee, ht_cap_buf, &ht_cap_len, encrypt);
  if(ieee->pHTInfo->bCurrentRT2RTAggregation)
  {
   realtek_ie_buf = ieee->pHTInfo->szRT2RTAggBuffer;
   realtek_ie_len = sizeof( ieee->pHTInfo->szRT2RTAggBuffer);
   HTConstructRT2RTAggElement(ieee, realtek_ie_buf, &realtek_ie_len);

  }
 }
 if(ieee->qos_support){
  wmm_info_len = beacon->qos_data.supported?9:0;
 }


 if(beacon->bCkipSupported)
 {
  ckip_ie_len = 30+2;
 }
 if(beacon->bCcxRmEnable)
 {
  ccxrm_ie_len = 6+2;
 }
 if( beacon->BssCcxVerNumber >= 2 )
 {
  cxvernum_ie_len = 5+2;
 }
 len = sizeof(struct ieee80211_assoc_request_frame)+ 2
  + beacon->ssid_len
  + rate_len
  + wpa_ie_len
  + wmm_info_len
                + ht_cap_len
  + realtek_ie_len
  + ckip_ie_len
  + ccxrm_ie_len
  + cxvernum_ie_len
  + ieee->tx_headroom;


 skb = dev_alloc_skb(len);

 if (!skb)
  return ((void*)0);

 skb_reserve(skb, ieee->tx_headroom);

 hdr = (struct ieee80211_assoc_request_frame *)
  skb_put(skb, sizeof(struct ieee80211_assoc_request_frame)+2);


 hdr->header.frame_ctl = IEEE80211_STYPE_ASSOC_REQ;
 hdr->header.duration_id= 37;
 memcpy(hdr->header.addr1, beacon->bssid, ETH_ALEN);
 memcpy(hdr->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 memcpy(hdr->header.addr3, beacon->bssid, ETH_ALEN);

 memcpy(ieee->ap_mac_addr, beacon->bssid, ETH_ALEN);

 hdr->capability = cpu_to_le16(WLAN_CAPABILITY_BSS);
 if (beacon->capability & WLAN_CAPABILITY_PRIVACY )
  hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);

 if (beacon->capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
  hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE);

 if(ieee->short_slot)
  hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);
  if (wmm_info_len)
 hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_QOS);

 hdr->listen_interval = 0xa;

 hdr->info_element[0].id = MFIE_TYPE_SSID;

 hdr->info_element[0].len = beacon->ssid_len;
 tag = skb_put(skb, beacon->ssid_len);
 memcpy(tag, beacon->ssid, beacon->ssid_len);

 tag = skb_put(skb, rate_len);

 ieee80211_MFIE_Brate(ieee, &tag);
 ieee80211_MFIE_Grate(ieee, &tag);

 if( beacon->bCkipSupported )
 {
  static u8 AironetIeOui[] = {0x00, 0x01, 0x66};
  u8 CcxAironetBuf[30];
  OCTET_STRING osCcxAironetIE;

  memset(CcxAironetBuf, 0,30);
  osCcxAironetIE.Octet = CcxAironetBuf;
  osCcxAironetIE.Length = sizeof(CcxAironetBuf);




  memcpy(osCcxAironetIE.Octet, AironetIeOui, sizeof(AironetIeOui));




  osCcxAironetIE.Octet[IE_CISCO_FLAG_POSITION] |= (SUPPORT_CKIP_PK|SUPPORT_CKIP_MIC) ;
  tag = skb_put(skb, ckip_ie_len);
  *tag++ = MFIE_TYPE_AIRONET;
  *tag++ = osCcxAironetIE.Length;
  memcpy(tag,osCcxAironetIE.Octet,osCcxAironetIE.Length);
  tag += osCcxAironetIE.Length;
 }

 if(beacon->bCcxRmEnable)
 {
  static u8 CcxRmCapBuf[] = {0x00, 0x40, 0x96, 0x01, 0x01, 0x00};
  OCTET_STRING osCcxRmCap;

  osCcxRmCap.Octet = CcxRmCapBuf;
  osCcxRmCap.Length = sizeof(CcxRmCapBuf);
  tag = skb_put(skb,ccxrm_ie_len);
  *tag++ = MFIE_TYPE_GENERIC;
  *tag++ = osCcxRmCap.Length;
  memcpy(tag,osCcxRmCap.Octet,osCcxRmCap.Length);
  tag += osCcxRmCap.Length;
 }

 if( beacon->BssCcxVerNumber >= 2 )
 {
  u8 CcxVerNumBuf[] = {0x00, 0x40, 0x96, 0x03, 0x00};
  OCTET_STRING osCcxVerNum;
  CcxVerNumBuf[4] = beacon->BssCcxVerNumber;
  osCcxVerNum.Octet = CcxVerNumBuf;
  osCcxVerNum.Length = sizeof(CcxVerNumBuf);
  tag = skb_put(skb,cxvernum_ie_len);
  *tag++ = MFIE_TYPE_GENERIC;
  *tag++ = osCcxVerNum.Length;
  memcpy(tag,osCcxVerNum.Octet,osCcxVerNum.Length);
  tag += osCcxVerNum.Length;
 }

 if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
  if(ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
  {
   tag = skb_put(skb, ht_cap_len);
   *tag++ = MFIE_TYPE_HT_CAP;
   *tag++ = ht_cap_len - 2;
   memcpy(tag, ht_cap_buf,ht_cap_len -2);
   tag += ht_cap_len -2;
  }
 }



 tag = skb_put(skb, wpa_ie_len);
 if (wpa_ie_len){
  memcpy(tag, ieee->wpa_ie, ieee->wpa_ie_len);
 }

 tag = skb_put(skb,wmm_info_len);
 if(wmm_info_len) {
   ieee80211_WMM_Info(ieee, &tag);
 }







 if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
  if(ieee->pHTInfo->ePeerHTSpecVer == HT_SPEC_VER_EWC)
  {
   tag = skb_put(skb, ht_cap_len);
   *tag++ = MFIE_TYPE_GENERIC;
   *tag++ = ht_cap_len - 2;
   memcpy(tag, ht_cap_buf,ht_cap_len - 2);
   tag += ht_cap_len -2;
  }

  if(ieee->pHTInfo->bCurrentRT2RTAggregation){
   tag = skb_put(skb, realtek_ie_len);
   *tag++ = MFIE_TYPE_GENERIC;
   *tag++ = realtek_ie_len - 2;
   memcpy(tag, realtek_ie_buf,realtek_ie_len -2 );
  }
 }


 return skb;
}
