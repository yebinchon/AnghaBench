
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ IOTRaFunc; int IOTPeer; scalar_t__ IOTAction; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;


 int HT_IOT_PEER_UNKNOWN ;

void HTResetIOTSetting(
 PRT_HIGH_THROUGHPUT pHTInfo
)
{
 pHTInfo->IOTAction = 0;
 pHTInfo->IOTPeer = HT_IOT_PEER_UNKNOWN;
 pHTInfo->IOTRaFunc = 0;
}
