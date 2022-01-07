
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bdSupportHT; int bdRT2RTAggregation; int bdRT2RTLongSlotTime; scalar_t__ RT2RT_HT_Mode; int bdHTSpecVer; scalar_t__ bdHTInfoLen; int bdHTInfoBuf; scalar_t__ bdHTCapLen; int bdHTCapBuf; } ;
typedef scalar_t__ RT_HT_CAPBILITY ;
typedef TYPE_1__* PBSS_HT ;


 int HT_SPEC_VER_IEEE ;
 int memset (int ,int ,int) ;

void HTInitializeBssDesc(PBSS_HT pBssHT)
{

 pBssHT->bdSupportHT = 0;
 memset(pBssHT->bdHTCapBuf, 0, sizeof(pBssHT->bdHTCapBuf));
 pBssHT->bdHTCapLen = 0;
 memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
 pBssHT->bdHTInfoLen = 0;

 pBssHT->bdHTSpecVer= HT_SPEC_VER_IEEE;

 pBssHT->bdRT2RTAggregation = 0;
 pBssHT->bdRT2RTLongSlotTime = 0;
 pBssHT->RT2RT_HT_Mode = (RT_HT_CAPBILITY)0;
}
