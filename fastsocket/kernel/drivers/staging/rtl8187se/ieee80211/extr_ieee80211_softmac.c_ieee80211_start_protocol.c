
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {short channel; int beacon_interval; } ;
struct ieee80211_device {int proto_started; int* last_rxseq_num; int* last_rxfrag_num; int iw_mode; scalar_t__ init_wmmparam_flag; scalar_t__* last_packet_time; TYPE_1__ current_network; int dev; int (* set_chan ) (int ,short) ;} ;
struct TYPE_4__ {int * channel_map; } ;


 TYPE_2__* GET_DOT11D_INFO (struct ieee80211_device*) ;





 short MAX_CHANNEL_NUMBER ;
 int ieee80211_start_bss (struct ieee80211_device*) ;
 int ieee80211_start_ibss (struct ieee80211_device*) ;
 int ieee80211_start_master_bss (struct ieee80211_device*) ;
 int ieee80211_start_monitor_mode (struct ieee80211_device*) ;
 int stub1 (int ,short) ;

void ieee80211_start_protocol(struct ieee80211_device *ieee)
{
 short ch = 0;
  int i = 0;

 if (ieee->proto_started)
  return;

 ieee->proto_started = 1;

 if (ieee->current_network.channel == 0){
  do{
   ch++;
   if (ch > MAX_CHANNEL_NUMBER)
    return;

  }while(!GET_DOT11D_INFO(ieee)->channel_map[ch]);

  ieee->current_network.channel = ch;
 }

 if (ieee->current_network.beacon_interval == 0)
  ieee->current_network.beacon_interval = 100;
 ieee->set_chan(ieee->dev,ieee->current_network.channel);

        for(i = 0; i < 17; i++) {
   ieee->last_rxseq_num[i] = -1;
   ieee->last_rxfrag_num[i] = -1;
   ieee->last_packet_time[i] = 0;
 }

 ieee->init_wmmparam_flag = 0;







 switch (ieee->iw_mode) {
  case 131:
   ieee->iw_mode = 130;

  case 130:
   ieee80211_start_bss(ieee);
   break;

  case 132:
   ieee80211_start_ibss(ieee);
   break;

  case 129:
   ieee80211_start_master_bss(ieee);
  break;

  case 128:
   ieee80211_start_monitor_mode(ieee);
   break;

  default:
   ieee->iw_mode = 130;
   ieee80211_start_bss(ieee);
   break;
 }
}
