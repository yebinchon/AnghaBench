
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr1; } ;
struct ieee80211_cts {int ra; int duration; int frame_control; } ;


 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_STYPE_CTS ;
 int cpu_to_le16 (int) ;
 int ieee80211_ctstoself_duration (struct ieee80211_hw*,struct ieee80211_vif*,size_t,struct ieee80211_tx_info const*) ;
 int memcpy (int ,int ,int) ;

void ieee80211_ctstoself_get(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
        const void *frame, size_t frame_len,
        const struct ieee80211_tx_info *frame_txctl,
        struct ieee80211_cts *cts)
{
 const struct ieee80211_hdr *hdr = frame;

 cts->frame_control =
     cpu_to_le16(IEEE80211_FTYPE_CTL | IEEE80211_STYPE_CTS);
 cts->duration = ieee80211_ctstoself_duration(hw, vif,
           frame_len, frame_txctl);
 memcpy(cts->ra, hdr->addr1, sizeof(cts->ra));
}
