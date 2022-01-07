
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int* data; } ;
struct net_device {int dev_addr; } ;
struct ieee80211_hdr_4addr {int addr1; int addr3; int frame_ctl; } ;
struct ieee80211_device {struct net_device* dev; } ;


 int ETH_ALEN ;
 int ETH_P_PAE ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int ieee80211_is_eapol_frame(struct ieee80211_device *ieee,
        struct sk_buff *skb, size_t hdrlen)
{
 struct net_device *dev = ieee->dev;
 u16 fc, ethertype;
 struct ieee80211_hdr_4addr *hdr;
 u8 *pos;

 if (skb->len < 24)
  return 0;

 hdr = (struct ieee80211_hdr_4addr *)skb->data;
 fc = le16_to_cpu(hdr->frame_ctl);


 if ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) ==
     IEEE80211_FCTL_TODS &&
     memcmp(hdr->addr1, dev->dev_addr, ETH_ALEN) == 0 &&
     memcmp(hdr->addr3, dev->dev_addr, ETH_ALEN) == 0) {

 } else if ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) ==
     IEEE80211_FCTL_FROMDS &&
     memcmp(hdr->addr1, dev->dev_addr, ETH_ALEN) == 0) {

 } else
  return 0;

 if (skb->len < 24 + 8)
  return 0;



 pos = skb->data + hdrlen;
 ethertype = (pos[6] << 8) | pos[7];
 if (ethertype == ETH_P_PAE)
  return 1;

 return 0;
}
