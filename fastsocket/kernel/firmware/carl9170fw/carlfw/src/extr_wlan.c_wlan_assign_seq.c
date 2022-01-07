
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hdr {int seq_ctrl; } ;
struct TYPE_3__ {int* sequence; } ;
struct TYPE_4__ {TYPE_1__ wlan; } ;


 int IEEE80211_SCTL_SEQ ;
 int cpu_to_le16 (int) ;
 TYPE_2__ fw ;
 scalar_t__ ieee80211_is_first_frag (int ) ;

__attribute__((used)) static void wlan_assign_seq(struct ieee80211_hdr *hdr, unsigned int vif)
{
 hdr->seq_ctrl &= cpu_to_le16(~IEEE80211_SCTL_SEQ);
 hdr->seq_ctrl |= cpu_to_le16(fw.wlan.sequence[vif]);

 if (ieee80211_is_first_frag(hdr->seq_ctrl))
  fw.wlan.sequence[vif] += 0x10;
}
