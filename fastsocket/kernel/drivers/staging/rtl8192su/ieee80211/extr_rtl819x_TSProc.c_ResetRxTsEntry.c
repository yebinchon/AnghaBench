
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RxIndicateSeq; int RxTimeoutIndicateSeq; int RxAdmittedBARecord; int TsCommonInfo; } ;
typedef TYPE_1__* PRX_TS_RECORD ;


 int ResetBaEntry (int *) ;
 int ResetTsCommonInfo (int *) ;

void ResetRxTsEntry(PRX_TS_RECORD pTS)
{
 ResetTsCommonInfo(&pTS->TsCommonInfo);
 pTS->RxIndicateSeq = 0xffff;
 pTS->RxTimeoutIndicateSeq = 0xffff;
 ResetBaEntry(&pTS->RxAdmittedBARecord);
}
