
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int capability; } ;
struct ieee80211_device {TYPE_1__ current_network; } ;
struct TYPE_5__ {int bUseShortPreamble; int data_rate; } ;
typedef TYPE_2__ cb_desc ;


 int WLAN_CAPABILITY_SHORT_PREAMBLE ;

extern void ieee80211_qurey_ShortPreambleMode(struct ieee80211_device* ieee, cb_desc* tcb_desc)
{
 tcb_desc->bUseShortPreamble = 0;
 if (tcb_desc->data_rate == 2)
 {
  return;
 }
 else if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
 {
  tcb_desc->bUseShortPreamble = 1;
 }
 return;
}
