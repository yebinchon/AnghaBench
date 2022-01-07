
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hostwep; scalar_t__ priv; } ;
typedef TYPE_2__ wlandevice_t ;
struct sk_buff {int dummy; } ;
typedef int p80211_metawep_t ;
struct TYPE_7__ {int fc; } ;
struct TYPE_9__ {TYPE_1__ a3; } ;
typedef TYPE_3__ p80211_hdr_t ;
typedef int hfa384x_t ;


 int HOSTWEP_ENCRYPT ;
 int HOSTWEP_PRIVACYINVOKED ;
 int WLAN_SET_FC_ISWEP (int) ;
 int cpu_to_le16 (int ) ;
 int hfa384x_drvr_txframe (int *,struct sk_buff*,TYPE_3__*,int *) ;

__attribute__((used)) static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
        p80211_hdr_t *p80211_hdr,
        p80211_metawep_t *p80211_wep)
{
 hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
 int result;


 if ((wlandev->hostwep & (HOSTWEP_PRIVACYINVOKED | HOSTWEP_ENCRYPT)) ==
     HOSTWEP_PRIVACYINVOKED) {
  p80211_hdr->a3.fc |= cpu_to_le16(WLAN_SET_FC_ISWEP(1));
 }

 result = hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);

 return result;
}
