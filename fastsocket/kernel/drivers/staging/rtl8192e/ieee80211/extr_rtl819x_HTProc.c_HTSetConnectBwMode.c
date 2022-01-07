
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct ieee80211_device {TYPE_1__ current_network; int dev; int (* GetHalfNmodeSupportByAPsHandler ) (int ) ;TYPE_2__* pHTInfo; } ;
struct TYPE_4__ {int bRegBW40MHz; int bSwBwInProgress; int bCurBW40MHz; scalar_t__ CurSTAExtChnlOffset; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;
typedef scalar_t__ HT_EXTCHNL_OFFSET ;
typedef scalar_t__ HT_CHANNEL_WIDTH ;


 int HTSetConnectBwModeCallback (struct ieee80211_device*) ;
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ;
 scalar_t__ HT_EXTCHNL_OFFSET_LOWER ;
 scalar_t__ HT_EXTCHNL_OFFSET_NO_EXT ;
 scalar_t__ HT_EXTCHNL_OFFSET_UPPER ;
 int stub1 (int ) ;

void HTSetConnectBwMode(struct ieee80211_device* ieee, HT_CHANNEL_WIDTH Bandwidth, HT_EXTCHNL_OFFSET Offset)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;


 if(pHTInfo->bRegBW40MHz == 0)
  return;
 if(pHTInfo->bSwBwInProgress) {

  return;
 }

 if(Bandwidth==HT_CHANNEL_WIDTH_20_40 && (!ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev)))
  {

  if(ieee->current_network.channel<2 && Offset==HT_EXTCHNL_OFFSET_LOWER)
   Offset = HT_EXTCHNL_OFFSET_NO_EXT;
  if(Offset==HT_EXTCHNL_OFFSET_UPPER || Offset==HT_EXTCHNL_OFFSET_LOWER) {
   pHTInfo->bCurBW40MHz = 1;
   pHTInfo->CurSTAExtChnlOffset = Offset;
  } else {
   pHTInfo->bCurBW40MHz = 0;
   pHTInfo->CurSTAExtChnlOffset = HT_EXTCHNL_OFFSET_NO_EXT;
  }
 } else {
  pHTInfo->bCurBW40MHz = 0;
  pHTInfo->CurSTAExtChnlOffset = HT_EXTCHNL_OFFSET_NO_EXT;
 }

 pHTInfo->bSwBwInProgress = 1;





 HTSetConnectBwModeCallback(ieee);


}
