
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_device {int* Regdot11HTOperationalRateSet; int dev; scalar_t__ (* GetHalfNmodeSupportByAPsHandler ) (int ) ;TYPE_1__* pHTInfo; } ;
struct TYPE_4__ {int ChlWidth; int ShortGI20Mhz; int ShortGI40Mhz; int TxSTBC; int MaxAMSDUSize; int DssCCk; int MPDUDensity; int MaxRxAMPDUFactor; int* MCS; int ExtHTCapInfo; int* TxBFCap; scalar_t__ ASCap; scalar_t__ LSigTxopProtect; scalar_t__ PSMP; scalar_t__ DelayBA; scalar_t__ RxSTBC; scalar_t__ GreenField; int MimoPwrSave; scalar_t__ AdvCoding; } ;
struct TYPE_3__ {scalar_t__ ePeerHTSpecVer; int IOTAction; scalar_t__ bRegSuppCCK; scalar_t__ bRegBW40MHz; int SelfMimoPs; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;
typedef TYPE_2__* PHT_CAPABILITY_ELE ;
typedef int EWC11NHTCap ;


 int HT_IOT_ACT_DISABLE_ALL_2SS ;
 int HT_IOT_ACT_DISABLE_MCS14 ;
 int HT_IOT_ACT_DISABLE_MCS15 ;
 scalar_t__ HT_SPEC_VER_EWC ;
 int IEEE80211_DEBUG (int ,char*,...) ;
 int IEEE80211_DL_ERR ;
 int IEEE80211_DL_HT ;
 int MAX_RECEIVE_BUFFER_SIZE ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ stub2 (int ) ;

void HTConstructCapabilityElement(struct ieee80211_device* ieee, u8* posHTCap, u8* len, u8 IsEncrypt)
{
 PRT_HIGH_THROUGHPUT pHT = ieee->pHTInfo;
 PHT_CAPABILITY_ELE pCapELE = ((void*)0);


 if ((posHTCap == ((void*)0)) || (pHT == ((void*)0)))
 {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "posHTCap or pHTInfo can't be null in HTConstructCapabilityElement()\n");
  return;
 }
 memset(posHTCap, 0, *len);
 if(pHT->ePeerHTSpecVer == HT_SPEC_VER_EWC)
 {
  u8 EWC11NHTCap[] = {0x00, 0x90, 0x4c, 0x33};
  memcpy(posHTCap, EWC11NHTCap, sizeof(EWC11NHTCap));
  pCapELE = (PHT_CAPABILITY_ELE)&(posHTCap[4]);
 }else
 {
  pCapELE = (PHT_CAPABILITY_ELE)posHTCap;
 }



 pCapELE->AdvCoding = 0;
 if(ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
 {
  pCapELE->ChlWidth = 0;
 }
 else
 {
  pCapELE->ChlWidth = (pHT->bRegBW40MHz?1:0);
 }


 pCapELE->MimoPwrSave = pHT->SelfMimoPs;
 pCapELE->GreenField = 0;
 pCapELE->ShortGI20Mhz = 1;
 pCapELE->ShortGI40Mhz = 1;


 pCapELE->TxSTBC = 1;
 pCapELE->RxSTBC = 0;
 pCapELE->DelayBA = 0;
 pCapELE->MaxAMSDUSize = (MAX_RECEIVE_BUFFER_SIZE>=7935)?1:0;
 pCapELE->DssCCk = ((pHT->bRegBW40MHz)?(pHT->bRegSuppCCK?1:0):0);
 pCapELE->PSMP = 0;
 pCapELE->LSigTxopProtect = 0;




 IEEE80211_DEBUG(IEEE80211_DL_HT, "TX HT cap/info ele BW=%d MaxAMSDUSize:%d DssCCk:%d\n", pCapELE->ChlWidth, pCapELE->MaxAMSDUSize, pCapELE->DssCCk);

 if( IsEncrypt)
 {
  pCapELE->MPDUDensity = 7;
  pCapELE->MaxRxAMPDUFactor = 2;
 }
 else
 {
  pCapELE->MaxRxAMPDUFactor = 3;
  pCapELE->MPDUDensity = 0;
 }


 memcpy(pCapELE->MCS, ieee->Regdot11HTOperationalRateSet, 16);
 if(pHT->IOTAction & HT_IOT_ACT_DISABLE_MCS15)
  pCapELE->MCS[1] &= 0x7f;

 if(pHT->IOTAction & HT_IOT_ACT_DISABLE_MCS14)
  pCapELE->MCS[1] &= 0xbf;

 if(pHT->IOTAction & HT_IOT_ACT_DISABLE_ALL_2SS)
  pCapELE->MCS[1] &= 0x00;



 if(ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
 {
  int i;
  for(i = 1; i< 16; i++)
   pCapELE->MCS[i] = 0;
 }


 memset(&pCapELE->ExtHTCapInfo, 0, 2);



 memset(pCapELE->TxBFCap, 0, 4);


 pCapELE->ASCap = 0;

 if(pHT->ePeerHTSpecVer == HT_SPEC_VER_EWC)
  *len = 30 + 2;
 else
  *len = 26 + 2;







 return;

}
