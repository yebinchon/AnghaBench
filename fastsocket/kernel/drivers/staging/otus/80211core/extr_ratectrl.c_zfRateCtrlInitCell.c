
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsRcCell {int* operationRateSet; int operationRateCount; int currentRateIndex; int currentRate; int probingTime; int lastTime; scalar_t__ lasttxCount; scalar_t__ failCount; scalar_t__ txCount; scalar_t__ flag; } ;
struct TYPE_3__ {scalar_t__ htCtrlBandwidth; } ;
struct TYPE_4__ {scalar_t__ wlanMode; scalar_t__ probeInterval; scalar_t__ probeCount; scalar_t__* txFail; scalar_t__* txMPDU; scalar_t__* PER; int tick; TYPE_1__ sta; } ;


 scalar_t__* BAFail ;
 scalar_t__* BAPER ;
 scalar_t__* TxMPDU ;
 scalar_t__ ZM_BANDWIDTH_40MHZ ;
 scalar_t__ ZM_MODE_AP ;
 int ZM_RATE_TABLE_SIZE ;
 TYPE_2__* wd ;
 void*** zcHtOneTxStreamRateTable ;
 void*** zcHtRateTable ;
 int zmw_get_wlan_dev (int *) ;

void zfRateCtrlInitCell(zdev_t* dev, struct zsRcCell* rcCell, u8_t type,
        u8_t gBand, u8_t SG40)
{
    u8_t i;
    u8_t maxrate;
    zmw_get_wlan_dev(dev);

    if (SG40) SG40 = 1;

    if (gBand != 0)
    {
        if (type == 1)
        {
            for (i=0; i<4; i++)
            {
                rcCell->operationRateSet[i] = (u8_t)i;
            }
            for (i=4; i<10; i++)
            {
                rcCell->operationRateSet[i] = 2+i;
            }
            rcCell->operationRateCount = 10;
            rcCell->currentRateIndex = 5;
        }
        else if (type == 2)
        {
            if (wd->wlanMode == ZM_MODE_AP)
            {
                for (i=0; i<15; i++)
                {
                    rcCell->operationRateSet[i] = zcHtRateTable[i][3];
                }
                if(!SG40) rcCell->operationRateSet[13] = 27;
                rcCell->operationRateCount = 14+SG40;
                rcCell->currentRateIndex = 10;
            }
            else
            {
                if (wd->sta.htCtrlBandwidth == ZM_BANDWIDTH_40MHZ)
                {
                    for (i=0; i<15; i++)
                    {
                        rcCell->operationRateSet[i] = zcHtRateTable[i][3];
                    }
                    if(!SG40) rcCell->operationRateSet[13] = 27;
                    rcCell->operationRateCount = 14+SG40;
                    rcCell->currentRateIndex = 10;
                }
                else
                {
                    for (i=0; i<13; i++)
                    {
                        rcCell->operationRateSet[i] = zcHtRateTable[i][2];
                    }
                    rcCell->operationRateCount = 13;
                    rcCell->currentRateIndex = 9;
                }
            }
        }
        else if (type == 3)
        {
                if (wd->sta.htCtrlBandwidth == ZM_BANDWIDTH_40MHZ)
                {
                    if(SG40 != 0)
                    {
                        maxrate = 13;
                    }
                    else
                    {
                        maxrate = 12;
                    }
                    for (i=0; i<maxrate; i++)
                    {
                        rcCell->operationRateSet[i] = zcHtOneTxStreamRateTable[i][3];
                    }
                    rcCell->operationRateCount = i;
                    rcCell->currentRateIndex = ((i+1)*3)/4;
                }
                else
                {
                    for (i=0; i<11; i++)
                    {
                        rcCell->operationRateSet[i] = zcHtOneTxStreamRateTable[i][2];
                    }
                    rcCell->operationRateCount = i;
                    rcCell->currentRateIndex = ((i+1)*3)/4;
                }
        }
        else
        {
            for (i=0; i<4; i++)
            {
                rcCell->operationRateSet[i] = (u8_t)i;
            }
            rcCell->operationRateCount = 4;
            rcCell->currentRateIndex = rcCell->operationRateCount-1;
        }
    }
    else
    {
        if (type == 2)
        {
            if (wd->wlanMode == ZM_MODE_AP)
            {
                for (i=0; i<(12+SG40); i++)
                {
                    rcCell->operationRateSet[i] = zcHtRateTable[i][1];
                }
                rcCell->operationRateCount = 12+SG40;
                rcCell->currentRateIndex = 8;
            }
            else
            {
                if (wd->sta.htCtrlBandwidth == ZM_BANDWIDTH_40MHZ)
                {
                    for (i=0; i<(12+SG40); i++)
                    {
                        rcCell->operationRateSet[i] = zcHtRateTable[i][1];
                    }
                    rcCell->operationRateCount = 12+SG40;
                    rcCell->currentRateIndex = 8;
                }
                else
                {
                    for (i=0; i<11; i++)
                    {
                        rcCell->operationRateSet[i] = zcHtRateTable[i][0];
                    }
                    rcCell->operationRateCount = 11;
                    rcCell->currentRateIndex = 7;
                }
            }
        }
        else if (type == 3)
        {
                if (wd->sta.htCtrlBandwidth == ZM_BANDWIDTH_40MHZ)
                {
                    if(SG40 != 0)
                    {
                        maxrate = 11;
                    }
                    else
                    {
                        maxrate = 10;
                    }
                    for (i=0; i<maxrate; i++)
                    {
                        rcCell->operationRateSet[i] = zcHtOneTxStreamRateTable[i][1];
                    }
                    rcCell->operationRateCount = i;
                    rcCell->currentRateIndex = ((i+1)*3)/4;
                }
                else
                {
                    for (i=0; i<9; i++)
                    {
                        rcCell->operationRateSet[i] = zcHtOneTxStreamRateTable[i][0];
                    }
                    rcCell->operationRateCount = i;
                    rcCell->currentRateIndex = ((i+1)*3)/4;
                }
        }
        else
        {
            for (i=0; i<8; i++)
            {
                rcCell->operationRateSet[i] = i+4;
            }
            rcCell->operationRateCount = 8;
            rcCell->currentRateIndex = 4;
        }
    }

    rcCell->flag = 0;
    rcCell->txCount = 0;
    rcCell->failCount = 0;
    rcCell->currentRate = rcCell->operationRateSet[rcCell->currentRateIndex];
    rcCell->lasttxCount = 0;
    rcCell->lastTime = wd->tick;
    rcCell->probingTime = wd->tick;
    for (i=0; i<ZM_RATE_TABLE_SIZE; i++) {
        wd->PER[i] = 0;
        wd->txMPDU[i] = wd->txFail[i] = 0;
    }
    wd->probeCount = 0;
    wd->probeInterval = 0;







    return;
}
