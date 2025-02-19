
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int channel; } ;
struct ieee80211_device {scalar_t__ iw_mode; TYPE_1__ current_network; TYPE_2__* pHTInfo; } ;
struct TYPE_6__ {int ControlChl; int RecommemdedTxWidth; int* BasicMSC; scalar_t__ PcoPhase; scalar_t__ PcoActive; scalar_t__ LSigTxopProtectFull; scalar_t__ SecondaryBeacon; scalar_t__ DualBeacon; scalar_t__ NonGFDevPresent; int OptMode; scalar_t__ SrvIntGranularity; scalar_t__ PSMPAccessOnly; scalar_t__ RIFS; int ExtChlOffset; } ;
struct TYPE_5__ {int bRegBW40MHz; int CurrentOpMode; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;
typedef TYPE_3__* PHT_INFORMATION_ELE ;


 int HT_EXTCHNL_OFFSET_LOWER ;
 int HT_EXTCHNL_OFFSET_NO_EXT ;
 int HT_EXTCHNL_OFFSET_UPPER ;
 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DL_ERR ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_MASTER ;
 int memset (int*,int ,int) ;

void HTConstructInfoElement(struct ieee80211_device* ieee, u8* posHTInfo, u8* len, u8 IsEncrypt)
{
 PRT_HIGH_THROUGHPUT pHT = ieee->pHTInfo;
 PHT_INFORMATION_ELE pHTInfoEle = (PHT_INFORMATION_ELE)posHTInfo;
 if ((posHTInfo == ((void*)0)) || (pHTInfoEle == ((void*)0)))
 {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "posHTInfo or pHTInfoEle can't be null in HTConstructInfoElement()\n");
  return;
 }

 memset(posHTInfo, 0, *len);
 if ( (ieee->iw_mode == IW_MODE_ADHOC) || (ieee->iw_mode == IW_MODE_MASTER))
 {
  pHTInfoEle->ControlChl = ieee->current_network.channel;
  pHTInfoEle->ExtChlOffset = ((pHT->bRegBW40MHz == 0)?HT_EXTCHNL_OFFSET_NO_EXT:
           (ieee->current_network.channel<=6)?
            HT_EXTCHNL_OFFSET_UPPER:HT_EXTCHNL_OFFSET_LOWER);
  pHTInfoEle->RecommemdedTxWidth = pHT->bRegBW40MHz;
  pHTInfoEle->RIFS = 0;
  pHTInfoEle->PSMPAccessOnly = 0;
  pHTInfoEle->SrvIntGranularity = 0;
  pHTInfoEle->OptMode = pHT->CurrentOpMode;
  pHTInfoEle->NonGFDevPresent = 0;
  pHTInfoEle->DualBeacon = 0;
  pHTInfoEle->SecondaryBeacon = 0;
  pHTInfoEle->LSigTxopProtectFull = 0;
  pHTInfoEle->PcoActive = 0;
  pHTInfoEle->PcoPhase = 0;

  memset(pHTInfoEle->BasicMSC, 0, 16);


  *len = 22 + 2;

 }
 else
 {

  *len = 0;
 }


 return;
}
