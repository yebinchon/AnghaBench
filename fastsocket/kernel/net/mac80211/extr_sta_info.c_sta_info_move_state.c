
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int addr; } ;
struct sta_info {int sta_state; int _flags; TYPE_6__* sdata; int local; TYPE_1__ sta; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_10__ {int sta; } ;
struct TYPE_11__ {TYPE_3__ vlan; } ;
struct TYPE_9__ {int type; } ;
struct TYPE_13__ {TYPE_5__* bss; TYPE_4__ u; TYPE_2__ vif; } ;
struct TYPE_12__ {int num_mcast_sta; } ;


 int EINVAL ;




 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_AP_VLAN ;
 int WARN (int,char*,int) ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTH ;
 int WLAN_STA_AUTHORIZED ;
 int WLAN_STA_INSERTED ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int drv_sta_state (int ,TYPE_6__*,struct sta_info*,int const,int) ;
 int might_sleep () ;
 int set_bit (int ,int *) ;
 int sta_dbg (TYPE_6__*,char*,int ,int) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

int sta_info_move_state(struct sta_info *sta,
   enum ieee80211_sta_state new_state)
{
 might_sleep();

 if (sta->sta_state == new_state)
  return 0;



 switch (new_state) {
 case 128:
  if (sta->sta_state != 130)
   return -EINVAL;
  break;
 case 130:
  if (sta->sta_state != 128 &&
      sta->sta_state != 131)
   return -EINVAL;
  break;
 case 131:
  if (sta->sta_state != 130 &&
      sta->sta_state != 129)
   return -EINVAL;
  break;
 case 129:
  if (sta->sta_state != 131)
   return -EINVAL;
  break;
 default:
  WARN(1, "invalid state %d", new_state);
  return -EINVAL;
 }

 sta_dbg(sta->sdata, "moving STA %pM to state %d\n",
  sta->sta.addr, new_state);





 if (test_sta_flag(sta, WLAN_STA_INSERTED)) {
  int err = drv_sta_state(sta->local, sta->sdata, sta,
     sta->sta_state, new_state);
  if (err)
   return err;
 }



 switch (new_state) {
 case 128:
  if (sta->sta_state == 130)
   clear_bit(WLAN_STA_AUTH, &sta->_flags);
  break;
 case 130:
  if (sta->sta_state == 128)
   set_bit(WLAN_STA_AUTH, &sta->_flags);
  else if (sta->sta_state == 131)
   clear_bit(WLAN_STA_ASSOC, &sta->_flags);
  break;
 case 131:
  if (sta->sta_state == 130) {
   set_bit(WLAN_STA_ASSOC, &sta->_flags);
  } else if (sta->sta_state == 129) {
   if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
       (sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN &&
        !sta->sdata->u.vlan.sta))
    atomic_dec(&sta->sdata->bss->num_mcast_sta);
   clear_bit(WLAN_STA_AUTHORIZED, &sta->_flags);
  }
  break;
 case 129:
  if (sta->sta_state == 131) {
   if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
       (sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN &&
        !sta->sdata->u.vlan.sta))
    atomic_inc(&sta->sdata->bss->num_mcast_sta);
   set_bit(WLAN_STA_AUTHORIZED, &sta->_flags);
  }
  break;
 default:
  break;
 }

 sta->sta_state = new_state;

 return 0;
}
