
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_device {int MinPassiveChnlNum; int IbssStartChnl; int bGlobalDomain; } ;
struct TYPE_4__ {int Len; int* Channel; } ;
struct TYPE_3__ {int* channel_map; int bEnabled; } ;
 TYPE_2__* ChannelPlan ;
 int Dot11d_Init (struct ieee80211_device*) ;
 int Dot11d_Reset (struct ieee80211_device*) ;
 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 int MAX_CHANNEL_NUMBER ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void rtl8180_set_channel_map(u8 channel_plan, struct ieee80211_device *ieee)
{
 int i;


 ieee->MinPassiveChnlNum=MAX_CHANNEL_NUMBER+1;
 ieee->IbssStartChnl=0;

 switch (channel_plan)
 {
  case 137:
  case 134:
  case 138:
  case 130:
  case 136:
  case 132:
  case 131:
  case 133:
  case 129:
  {
   Dot11d_Init(ieee);
   ieee->bGlobalDomain = 0;
   if (ChannelPlan[channel_plan].Len != 0){

    memset(GET_DOT11D_INFO(ieee)->channel_map, 0, sizeof(GET_DOT11D_INFO(ieee)->channel_map));

    for (i=0;i<ChannelPlan[channel_plan].Len;i++)
    {
     if(ChannelPlan[channel_plan].Channel[i] <= 14)
      GET_DOT11D_INFO(ieee)->channel_map[ChannelPlan[channel_plan].Channel[i]] = 1;
    }
   }
   break;
  }
  case 135:
  {
   GET_DOT11D_INFO(ieee)->bEnabled = 0;
   Dot11d_Reset(ieee);
   ieee->bGlobalDomain = 1;
   break;
  }
  case 128:
  {
  ieee->MinPassiveChnlNum=12;
  ieee->IbssStartChnl= 10;
  break;
  }
  default:
  {
   Dot11d_Init(ieee);
   ieee->bGlobalDomain = 0;
   memset(GET_DOT11D_INFO(ieee)->channel_map, 0, sizeof(GET_DOT11D_INFO(ieee)->channel_map));
   for (i=1;i<=14;i++)
   {
    GET_DOT11D_INFO(ieee)->channel_map[i] = 1;
   }
   break;
  }
 }
}
