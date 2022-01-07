
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ status; } ;
struct ieee80211_supported_band {TYPE_1__* bitrates; } ;
struct ieee80211_radiotap_header {int it_present; int it_len; } ;
struct ieee80211_hdr {int addr1; } ;
struct TYPE_5__ {size_t idx; int flags; } ;
struct TYPE_4__ {int bitrate; } ;


 int IEEE80211_RADIOTAP_DATA_RETRIES ;
 int IEEE80211_RADIOTAP_F_TX_CTS ;
 int IEEE80211_RADIOTAP_F_TX_FAIL ;
 int IEEE80211_RADIOTAP_F_TX_RTS ;
 int IEEE80211_RADIOTAP_MCS ;
 unsigned char IEEE80211_RADIOTAP_MCS_BW_40 ;
 unsigned char IEEE80211_RADIOTAP_MCS_FMT_GF ;
 unsigned char IEEE80211_RADIOTAP_MCS_HAVE_BW ;
 unsigned char IEEE80211_RADIOTAP_MCS_HAVE_GI ;
 unsigned char IEEE80211_RADIOTAP_MCS_HAVE_MCS ;
 unsigned char IEEE80211_RADIOTAP_MCS_SGI ;
 int IEEE80211_RADIOTAP_RATE ;
 int IEEE80211_RADIOTAP_TX_FLAGS ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_GREEN_FIELD ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int IEEE80211_TX_STAT_ACK ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int is_multicast_ether_addr (int ) ;
 int memset (struct ieee80211_radiotap_header*,int ,int) ;
 int put_unaligned_le16 (int ,unsigned char*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_add_tx_radiotap_header(struct ieee80211_supported_band
          *sband, struct sk_buff *skb,
          int retry_count, int rtap_len)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_radiotap_header *rthdr;
 unsigned char *pos;
 u16 txflags;

 rthdr = (struct ieee80211_radiotap_header *) skb_push(skb, rtap_len);

 memset(rthdr, 0, rtap_len);
 rthdr->it_len = cpu_to_le16(rtap_len);
 rthdr->it_present =
  cpu_to_le32((1 << IEEE80211_RADIOTAP_TX_FLAGS) |
       (1 << IEEE80211_RADIOTAP_DATA_RETRIES));
 pos = (unsigned char *)(rthdr + 1);
 if (info->status.rates[0].idx >= 0 &&
     !(info->status.rates[0].flags & IEEE80211_TX_RC_MCS)) {
  rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_RATE);
  *pos = sband->bitrates[info->status.rates[0].idx].bitrate / 5;

  pos += 2;
 }


 txflags = 0;
 if (!(info->flags & IEEE80211_TX_STAT_ACK) &&
     !is_multicast_ether_addr(hdr->addr1))
  txflags |= IEEE80211_RADIOTAP_F_TX_FAIL;

 if ((info->status.rates[0].flags & IEEE80211_TX_RC_USE_RTS_CTS) ||
     (info->status.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT))
  txflags |= IEEE80211_RADIOTAP_F_TX_CTS;
 else if (info->status.rates[0].flags & IEEE80211_TX_RC_USE_RTS_CTS)
  txflags |= IEEE80211_RADIOTAP_F_TX_RTS;

 put_unaligned_le16(txflags, pos);
 pos += 2;



 *pos = retry_count;
 pos++;


 if (info->status.rates[0].idx >= 0 &&
     info->status.rates[0].flags & IEEE80211_TX_RC_MCS) {
  rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_MCS);
  pos[0] = IEEE80211_RADIOTAP_MCS_HAVE_MCS |
    IEEE80211_RADIOTAP_MCS_HAVE_GI |
    IEEE80211_RADIOTAP_MCS_HAVE_BW;
  if (info->status.rates[0].flags & IEEE80211_TX_RC_SHORT_GI)
   pos[1] |= IEEE80211_RADIOTAP_MCS_SGI;
  if (info->status.rates[0].flags & IEEE80211_TX_RC_40_MHZ_WIDTH)
   pos[1] |= IEEE80211_RADIOTAP_MCS_BW_40;
  if (info->status.rates[0].flags & IEEE80211_TX_RC_GREEN_FIELD)
   pos[1] |= IEEE80211_RADIOTAP_MCS_FMT_GF;
  pos[2] = info->status.rates[0].idx;
  pos += 3;
 }

}
