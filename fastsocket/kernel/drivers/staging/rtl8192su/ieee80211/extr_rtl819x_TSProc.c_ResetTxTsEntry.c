
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bAddBaReqInProgress; int bAddBaReqDelayed; int bUsingBa; int TxPendingBARecord; int TxAdmittedBARecord; scalar_t__ TxCurSeq; int TsCommonInfo; } ;
typedef TYPE_1__* PTX_TS_RECORD ;


 int ResetBaEntry (int *) ;
 int ResetTsCommonInfo (int *) ;

void ResetTxTsEntry(PTX_TS_RECORD pTS)
{
 ResetTsCommonInfo(&pTS->TsCommonInfo);
 pTS->TxCurSeq = 0;
 pTS->bAddBaReqInProgress = 0;
 pTS->bAddBaReqDelayed = 0;
 pTS->bUsingBa = 0;
 ResetBaEntry(&pTS->TxAdmittedBARecord);
 ResetBaEntry(&pTS->TxPendingBARecord);
}
