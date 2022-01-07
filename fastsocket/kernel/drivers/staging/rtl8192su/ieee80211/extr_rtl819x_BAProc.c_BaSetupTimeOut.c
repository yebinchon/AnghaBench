
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bValid; } ;
struct TYPE_4__ {int bAddBaReqInProgress; int bAddBaReqDelayed; TYPE_1__ TxPendingBARecord; } ;
typedef TYPE_2__* PTX_TS_RECORD ;



void BaSetupTimeOut(unsigned long data)
{
 PTX_TS_RECORD pTxTs = (PTX_TS_RECORD)data;

 pTxTs->bAddBaReqInProgress = 0;
 pTxTs->bAddBaReqDelayed = 1;
 pTxTs->TxPendingBARecord.bValid = 0;
}
