
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_device {int mode; } ;


 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DL_ERR ;





 int RATE_ADPT_1SS_MASK ;
 int RATE_ADPT_2SS_MASK ;
 int RATE_ADPT_MCS32_MASK ;

u8 HT_PickMCSRate(struct ieee80211_device* ieee, u8* pOperateMCS)
{
 u8 i;
 if (pOperateMCS == ((void*)0))
 {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "pOperateMCS can't be null in HT_PickMCSRate()\n");
  return 0;
 }

 switch(ieee->mode)
 {
 case 132:
 case 131:
 case 130:



   for(i=0;i<=15;i++){
    pOperateMCS[i] = 0;
   }
   break;

 case 129:
 case 128:





   pOperateMCS[0] &=RATE_ADPT_1SS_MASK;
   pOperateMCS[1] &=RATE_ADPT_2SS_MASK;
   pOperateMCS[3] &=RATE_ADPT_MCS32_MASK;
   break;


 default:

   break;

 }

 return 1;
}
