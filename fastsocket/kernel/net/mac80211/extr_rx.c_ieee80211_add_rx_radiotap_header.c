
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef int u16 ;
struct sk_buff {int len; } ;
struct ieee80211_rx_status {int vendor_radiotap_len; int flag; int freq; scalar_t__ band; unsigned char signal; unsigned char antenna; int rate_idx; int vht_nss; int vendor_radiotap_align; int vendor_radiotap_subns; int * vendor_radiotap_oui; int ampdu_delimiter_crc; int ampdu_reference; int vendor_radiotap_bitmap; } ;
struct ieee80211_rate {int bitrate; int flags; } ;
struct ieee80211_radiotap_header {int it_present; int it_len; } ;
struct TYPE_2__ {int flags; int radiotap_vht_details; int radiotap_mcs_details; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 int BIT (int ) ;
 scalar_t__ FCS_LEN ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_CHAN_5GHZ ;
 int IEEE80211_CHAN_CCK ;
 int IEEE80211_CHAN_DYN ;
 int IEEE80211_CHAN_OFDM ;
 int IEEE80211_HW_RX_INCLUDES_FCS ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_ERR ;
 int IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_KNOWN ;
 int IEEE80211_RADIOTAP_AMPDU_IS_LAST ;
 int IEEE80211_RADIOTAP_AMPDU_IS_ZEROLEN ;
 int IEEE80211_RADIOTAP_AMPDU_LAST_KNOWN ;
 int IEEE80211_RADIOTAP_AMPDU_REPORT_ZEROLEN ;
 int IEEE80211_RADIOTAP_AMPDU_STATUS ;
 int IEEE80211_RADIOTAP_ANTENNA ;
 int IEEE80211_RADIOTAP_CHANNEL ;
 int IEEE80211_RADIOTAP_DBM_ANTSIGNAL ;
 int IEEE80211_RADIOTAP_EXT ;
 int IEEE80211_RADIOTAP_FLAGS ;
 unsigned char IEEE80211_RADIOTAP_F_BADFCS ;
 unsigned char IEEE80211_RADIOTAP_F_FCS ;
 int IEEE80211_RADIOTAP_F_RX_BADPLCP ;
 unsigned char IEEE80211_RADIOTAP_F_SHORTPRE ;
 int IEEE80211_RADIOTAP_MCS ;
 unsigned char IEEE80211_RADIOTAP_MCS_BW_40 ;
 unsigned char IEEE80211_RADIOTAP_MCS_FMT_GF ;
 unsigned char IEEE80211_RADIOTAP_MCS_SGI ;
 int IEEE80211_RADIOTAP_RATE ;
 int IEEE80211_RADIOTAP_RX_FLAGS ;
 int IEEE80211_RADIOTAP_TSFT ;
 int IEEE80211_RADIOTAP_VENDOR_NAMESPACE ;
 int IEEE80211_RADIOTAP_VHT ;
 unsigned char IEEE80211_RADIOTAP_VHT_FLAG_SGI ;
 int IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH ;
 int IEEE80211_RATE_ERP_G ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_160MHZ ;
 int RX_FLAG_40MHZ ;
 int RX_FLAG_80MHZ ;
 int RX_FLAG_80P80MHZ ;
 int RX_FLAG_AMPDU_DELIM_CRC_ERROR ;
 int RX_FLAG_AMPDU_DELIM_CRC_KNOWN ;
 int RX_FLAG_AMPDU_DETAILS ;
 int RX_FLAG_AMPDU_IS_LAST ;
 int RX_FLAG_AMPDU_IS_ZEROLEN ;
 int RX_FLAG_AMPDU_LAST_KNOWN ;
 int RX_FLAG_AMPDU_REPORT_ZEROLEN ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int RX_FLAG_HT ;
 int RX_FLAG_HT_GF ;
 int RX_FLAG_NO_SIGNAL_VAL ;
 int RX_FLAG_SHORTPRE ;
 int RX_FLAG_SHORT_GI ;
 int RX_FLAG_VHT ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int ieee80211_calculate_rx_timestamp (struct ieee80211_local*,struct ieee80211_rx_status*,int,int ) ;
 scalar_t__ ieee80211_have_rx_timestamp (struct ieee80211_rx_status*) ;
 int memset (struct ieee80211_radiotap_header*,int ,int) ;
 int put_unaligned_le16 (int,unsigned char*) ;
 int put_unaligned_le32 (int ,unsigned char*) ;
 int put_unaligned_le64 (int ,unsigned char*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void
ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
     struct sk_buff *skb,
     struct ieee80211_rate *rate,
     int rtap_len, bool has_fcs)
{
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_radiotap_header *rthdr;
 unsigned char *pos;
 u16 rx_flags = 0;
 int mpdulen;

 mpdulen = skb->len;
 if (!(has_fcs && (local->hw.flags & IEEE80211_HW_RX_INCLUDES_FCS)))
  mpdulen += FCS_LEN;

 rthdr = (struct ieee80211_radiotap_header *)skb_push(skb, rtap_len);
 memset(rthdr, 0, rtap_len);


 rthdr->it_present =
  cpu_to_le32((1 << IEEE80211_RADIOTAP_FLAGS) |
       (1 << IEEE80211_RADIOTAP_CHANNEL) |
       (1 << IEEE80211_RADIOTAP_ANTENNA) |
       (1 << IEEE80211_RADIOTAP_RX_FLAGS));
 rthdr->it_len = cpu_to_le16(rtap_len + status->vendor_radiotap_len);

 pos = (unsigned char *)(rthdr + 1);

 if (status->vendor_radiotap_len) {
  rthdr->it_present |=
   cpu_to_le32(BIT(IEEE80211_RADIOTAP_VENDOR_NAMESPACE)) |
   cpu_to_le32(BIT(IEEE80211_RADIOTAP_EXT));
  put_unaligned_le32(status->vendor_radiotap_bitmap, pos);
  pos += 4;
 }




 if (ieee80211_have_rx_timestamp(status)) {

  while ((pos - (u8 *)rthdr) & 7)
   *pos++ = 0;
  put_unaligned_le64(
   ieee80211_calculate_rx_timestamp(local, status,
        mpdulen, 0),
   pos);
  rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
  pos += 8;
 }


 if (has_fcs && (local->hw.flags & IEEE80211_HW_RX_INCLUDES_FCS))
  *pos |= IEEE80211_RADIOTAP_F_FCS;
 if (status->flag & (RX_FLAG_FAILED_FCS_CRC | RX_FLAG_FAILED_PLCP_CRC))
  *pos |= IEEE80211_RADIOTAP_F_BADFCS;
 if (status->flag & RX_FLAG_SHORTPRE)
  *pos |= IEEE80211_RADIOTAP_F_SHORTPRE;
 pos++;


 if (!rate || status->flag & (RX_FLAG_HT | RX_FLAG_VHT)) {






  *pos = 0;
 } else {
  rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_RATE);
  *pos = rate->bitrate / 5;
 }
 pos++;


 put_unaligned_le16(status->freq, pos);
 pos += 2;
 if (status->band == IEEE80211_BAND_5GHZ)
  put_unaligned_le16(IEEE80211_CHAN_OFDM | IEEE80211_CHAN_5GHZ,
       pos);
 else if (status->flag & (RX_FLAG_HT | RX_FLAG_VHT))
  put_unaligned_le16(IEEE80211_CHAN_DYN | IEEE80211_CHAN_2GHZ,
       pos);
 else if (rate && rate->flags & IEEE80211_RATE_ERP_G)
  put_unaligned_le16(IEEE80211_CHAN_OFDM | IEEE80211_CHAN_2GHZ,
       pos);
 else if (rate)
  put_unaligned_le16(IEEE80211_CHAN_CCK | IEEE80211_CHAN_2GHZ,
       pos);
 else
  put_unaligned_le16(IEEE80211_CHAN_2GHZ, pos);
 pos += 2;


 if (local->hw.flags & IEEE80211_HW_SIGNAL_DBM &&
     !(status->flag & RX_FLAG_NO_SIGNAL_VAL)) {
  *pos = status->signal;
  rthdr->it_present |=
   cpu_to_le32(1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL);
  pos++;
 }




 *pos = status->antenna;
 pos++;





 if ((pos - (u8 *)rthdr) & 1)
  *pos++ = 0;
 if (status->flag & RX_FLAG_FAILED_PLCP_CRC)
  rx_flags |= IEEE80211_RADIOTAP_F_RX_BADPLCP;
 put_unaligned_le16(rx_flags, pos);
 pos += 2;

 if (status->flag & RX_FLAG_HT) {
  rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_MCS);
  *pos++ = local->hw.radiotap_mcs_details;
  *pos = 0;
  if (status->flag & RX_FLAG_SHORT_GI)
   *pos |= IEEE80211_RADIOTAP_MCS_SGI;
  if (status->flag & RX_FLAG_40MHZ)
   *pos |= IEEE80211_RADIOTAP_MCS_BW_40;
  if (status->flag & RX_FLAG_HT_GF)
   *pos |= IEEE80211_RADIOTAP_MCS_FMT_GF;
  pos++;
  *pos++ = status->rate_idx;
 }

 if (status->flag & RX_FLAG_AMPDU_DETAILS) {
  u16 flags = 0;


  while ((pos - (u8 *)rthdr) & 3)
   pos++;
  rthdr->it_present |=
   cpu_to_le32(1 << IEEE80211_RADIOTAP_AMPDU_STATUS);
  put_unaligned_le32(status->ampdu_reference, pos);
  pos += 4;
  if (status->flag & RX_FLAG_AMPDU_REPORT_ZEROLEN)
   flags |= IEEE80211_RADIOTAP_AMPDU_REPORT_ZEROLEN;
  if (status->flag & RX_FLAG_AMPDU_IS_ZEROLEN)
   flags |= IEEE80211_RADIOTAP_AMPDU_IS_ZEROLEN;
  if (status->flag & RX_FLAG_AMPDU_LAST_KNOWN)
   flags |= IEEE80211_RADIOTAP_AMPDU_LAST_KNOWN;
  if (status->flag & RX_FLAG_AMPDU_IS_LAST)
   flags |= IEEE80211_RADIOTAP_AMPDU_IS_LAST;
  if (status->flag & RX_FLAG_AMPDU_DELIM_CRC_ERROR)
   flags |= IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_ERR;
  if (status->flag & RX_FLAG_AMPDU_DELIM_CRC_KNOWN)
   flags |= IEEE80211_RADIOTAP_AMPDU_DELIM_CRC_KNOWN;
  put_unaligned_le16(flags, pos);
  pos += 2;
  if (status->flag & RX_FLAG_AMPDU_DELIM_CRC_KNOWN)
   *pos++ = status->ampdu_delimiter_crc;
  else
   *pos++ = 0;
  *pos++ = 0;
 }

 if (status->flag & RX_FLAG_VHT) {
  u16 known = local->hw.radiotap_vht_details;

  rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_VHT);

  if (status->flag & RX_FLAG_80P80MHZ)
   known &= ~IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH;
  put_unaligned_le16(known, pos);
  pos += 2;

  if (status->flag & RX_FLAG_SHORT_GI)
   *pos |= IEEE80211_RADIOTAP_VHT_FLAG_SGI;
  pos++;

  if (status->flag & RX_FLAG_80MHZ)
   *pos++ = 4;
  else if (status->flag & RX_FLAG_80P80MHZ)
   *pos++ = 0;
  else if (status->flag & RX_FLAG_160MHZ)
   *pos++ = 11;
  else if (status->flag & RX_FLAG_40MHZ)
   *pos++ = 1;
  else
   *pos++ = 0;

  *pos = (status->rate_idx << 4) | status->vht_nss;
  pos += 4;

  pos++;

  pos++;

  pos += 2;
 }

 if (status->vendor_radiotap_len) {

  if ((pos - (u8 *)rthdr) & 1)
   *pos++ = 0;
  *pos++ = status->vendor_radiotap_oui[0];
  *pos++ = status->vendor_radiotap_oui[1];
  *pos++ = status->vendor_radiotap_oui[2];
  *pos++ = status->vendor_radiotap_subns;
  put_unaligned_le16(status->vendor_radiotap_len, pos);
  pos += 2;

  while ((pos - (u8 *)rthdr) & (status->vendor_radiotap_align - 1))
   *pos++ = 0;
 }
}
