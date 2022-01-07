
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_device {int* Regdot11HTOperationalRateSet; int dev; scalar_t__ (* GetHalfNmodeSupportByAPsHandler ) (int ) ;} ;


 int HT_PickMCSRate (struct ieee80211_device*,int*) ;
 scalar_t__ stub1 (int ) ;

u8 HTFilterMCSRate( struct ieee80211_device* ieee, u8* pSupportMCS, u8* pOperateMCS)
{

 u8 i=0;


 for(i=0;i<=15;i++){
  pOperateMCS[i] = ieee->Regdot11HTOperationalRateSet[i]&pSupportMCS[i];
 }






 HT_PickMCSRate(ieee, pOperateMCS);


 if(ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
  pOperateMCS[1] = 0;





 for(i=2; i<=15; i++)
  pOperateMCS[i] = 0;

 return 1;
}
