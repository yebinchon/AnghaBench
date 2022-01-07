
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; int addr; } ;
struct TYPE_7__ {scalar_t__ sta; } ;
struct TYPE_6__ {int use_4addr; } ;
struct TYPE_8__ {TYPE_2__ vlan; TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; TYPE_4__ vif; TYPE_3__ u; } ;
struct ieee80211_rx_data {struct ieee80211_sub_if_data* sdata; TYPE_5__* skb; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct TYPE_10__ {scalar_t__ data; } ;


 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ieee80211_data_to_8023 (TYPE_5__*,int ,scalar_t__) ;
 scalar_t__ ieee80211_has_a4 (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

__attribute__((used)) static int
__ieee80211_data_to_8023(struct ieee80211_rx_data *rx, bool *port_control)
{
 struct ieee80211_sub_if_data *sdata = rx->sdata;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
 bool check_port_control = 0;
 struct ethhdr *ehdr;
 int ret;

 *port_control = 0;
 if (ieee80211_has_a4(hdr->frame_control) &&
     sdata->vif.type == NL80211_IFTYPE_AP_VLAN && !sdata->u.vlan.sta)
  return -1;

 if (sdata->vif.type == NL80211_IFTYPE_STATION &&
     !!sdata->u.mgd.use_4addr != !!ieee80211_has_a4(hdr->frame_control)) {

  if (!sdata->u.mgd.use_4addr)
   return -1;
  else
   check_port_control = 1;
 }

 if (is_multicast_ether_addr(hdr->addr1) &&
     sdata->vif.type == NL80211_IFTYPE_AP_VLAN && sdata->u.vlan.sta)
  return -1;

 ret = ieee80211_data_to_8023(rx->skb, sdata->vif.addr, sdata->vif.type);
 if (ret < 0)
  return ret;

 ehdr = (struct ethhdr *) rx->skb->data;
 if (ehdr->h_proto == rx->sdata->control_port_protocol)
  *port_control = 1;
 else if (check_port_control)
  return -1;

 return 0;
}
