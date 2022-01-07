
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlandevice_t ;
struct sk_buff {int dummy; } ;


 int p80211netdev_rx (int *,struct sk_buff*) ;

void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
{
 p80211netdev_rx(wlandev, skb);
 return;
}
