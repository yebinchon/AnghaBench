
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ TClasNum; scalar_t__ TClasProc; int TClass; int TSpec; int * Addr; } ;
typedef int TSPEC_BODY ;
typedef int QOS_TCLAS ;
typedef TYPE_1__* PTS_COMMON_INFO ;


 int TCLAS_NUM ;
 int memset (int *,int ,int) ;

void ResetTsCommonInfo(PTS_COMMON_INFO pTsCommonInfo)
{
 memset(pTsCommonInfo->Addr, 0, 6);
 memset(&pTsCommonInfo->TSpec, 0, sizeof(TSPEC_BODY));
 memset(&pTsCommonInfo->TClass, 0, sizeof(QOS_TCLAS)*TCLAS_NUM);
 pTsCommonInfo->TClasProc = 0;
 pTsCommonInfo->TClasNum = 0;
}
