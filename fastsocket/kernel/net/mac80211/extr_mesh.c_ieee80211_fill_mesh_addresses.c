
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int addr4; int addr3; int addr2; int addr1; } ;
typedef int __le16 ;


 int ETH_ALEN ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 int cpu_to_le16 (int) ;
 scalar_t__ is_multicast_ether_addr (int const*) ;
 int memcpy (int ,int const*,int ) ;
 int memset (int ,int ,int ) ;

int ieee80211_fill_mesh_addresses(struct ieee80211_hdr *hdr, __le16 *fc,
      const u8 *meshda, const u8 *meshsa)
{
 if (is_multicast_ether_addr(meshda)) {
  *fc |= cpu_to_le16(IEEE80211_FCTL_FROMDS);

  memcpy(hdr->addr1, meshda, ETH_ALEN);
  memcpy(hdr->addr2, meshsa, ETH_ALEN);
  memcpy(hdr->addr3, meshsa, ETH_ALEN);
  return 24;
 } else {
  *fc |= cpu_to_le16(IEEE80211_FCTL_FROMDS | IEEE80211_FCTL_TODS);

  memset(hdr->addr1, 0, ETH_ALEN);
  memcpy(hdr->addr2, meshsa, ETH_ALEN);
  memcpy(hdr->addr3, meshda, ETH_ALEN);
  memcpy(hdr->addr4, meshsa, ETH_ALEN);
  return 30;
 }
}
