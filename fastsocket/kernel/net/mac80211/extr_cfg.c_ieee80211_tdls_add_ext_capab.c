
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int WLAN_EID_EXT_CAPABILITY ;
 int WLAN_EXT_CAPA5_TDLS_ENABLED ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_tdls_add_ext_capab(struct sk_buff *skb)
{
 u8 *pos = (void *)skb_put(skb, 7);

 *pos++ = WLAN_EID_EXT_CAPABILITY;
 *pos++ = 5;
 *pos++ = 0x0;
 *pos++ = 0x0;
 *pos++ = 0x0;
 *pos++ = 0x0;
 *pos++ = WLAN_EXT_CAPA5_TDLS_ENABLED;
}
