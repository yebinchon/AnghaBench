
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u8_t ;
typedef int u32_t ;
typedef size_t u16_t ;
typedef int s8_t ;
typedef int rsp ;
struct TYPE_7__ {scalar_t__ powerSaveMode; size_t staPSDataCount; int ibssAtimTimer; int atimWindow; TYPE_1__* oppositeInfo; int ** staPSDataQueue; } ;
struct TYPE_9__ {size_t* bcmcTail; size_t* bcmcHead; TYPE_3__* staTable; int *** bcmcArray; } ;
struct TYPE_10__ {scalar_t__ wlanMode; scalar_t__ CurrentDtimCount; TYPE_2__ sta; TYPE_4__ ap; } ;
struct TYPE_8__ {int rcCell; } ;
struct TYPE_6__ {int rcCell; } ;


 int ZM_BCMC_ARRAY_SIZE ;
 int ZM_BIT_15 ;
 int ZM_EXTERNAL_ALLOC_BUF ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_STA_PS_NONE ;
 TYPE_5__* wd ;
 size_t zfApFindSta (int *,size_t*) ;
 int zfApSendBeacon (int *) ;
 int zfApSendFailure (int *,size_t*) ;
 scalar_t__ zfPhyCtrlToRate (int) ;
 int zfPowerSavingMgrPreTBTTInterrupt (int *) ;
 int zfRateCtrlTxFailEvent (int *,int *,size_t,int) ;
 int zfRateCtrlTxSuccessEvent (int *,int *,scalar_t__) ;
 int zfStaFindOppositeByMACAddr (int *,size_t*,size_t*) ;
 int zfStaSendBeacon (int *) ;
 int zfTxSendEth (int *,int *,int ,int ,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfCoreEvent(zdev_t* dev, u16_t event, u8_t* rsp)
{
    u16_t i;
    zbuf_t* psBuf;
    u8_t moreData;
    u8_t vap = 0;
    u8_t peerIdx;
    s8_t res;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();


    if (event == 0)
    {
        if ( wd->wlanMode == ZM_MODE_AP )
        {
            zfApSendBeacon(dev);

            if (wd->CurrentDtimCount == 0)
            {

                do
                {
                    psBuf = ((void*)0);
                    moreData = 0;
                    zmw_enter_critical_section(dev);
                    if (wd->ap.bcmcTail[vap] != wd->ap.bcmcHead[vap])
                    {

                        psBuf = wd->ap.bcmcArray[vap][wd->ap.bcmcHead[vap]];
                        wd->ap.bcmcHead[vap] = (wd->ap.bcmcHead[vap] + 1)
                                & (ZM_BCMC_ARRAY_SIZE - 1);
                        if (wd->ap.bcmcTail[vap] != wd->ap.bcmcHead[vap])
                        {
                            moreData = 0x20;
                        }
                    }
                    zmw_leave_critical_section(dev);
                    if (psBuf != ((void*)0))
                    {

                        zfTxSendEth(dev, psBuf, 0, ZM_EXTERNAL_ALLOC_BUF,
                                moreData);
                    }
                } while(psBuf != ((void*)0));

            }
        }
        else
        {

            if ( wd->sta.powerSaveMode > ZM_STA_PS_NONE )
            {

                for(i=0; i<wd->sta.staPSDataCount; i++)
                {
                    zfTxSendEth(dev, wd->sta.staPSDataQueue[i], 0,
                                ZM_EXTERNAL_ALLOC_BUF, 0);
                }

                wd->sta.staPSDataCount = 0;
            }

            if ( wd->wlanMode == ZM_MODE_IBSS )
            {
                zfStaSendBeacon(dev);
                wd->sta.ibssAtimTimer = ZM_BIT_15 | wd->sta.atimWindow;
            }

            zfPowerSavingMgrPreTBTTInterrupt(dev);
        }
    }
    else if (event == 1)
    {
        u32_t retryRate;

        retryRate = (u32_t)(rsp[6]) + (((u32_t)(rsp[7]))<<8)
                + (((u32_t)(rsp[8]))<<16) + (((u32_t)(rsp[9]))<<24);

        if (wd->wlanMode == ZM_MODE_AP)
        {
            zmw_enter_critical_section(dev);
            if ((i=zfApFindSta(dev, (u16_t*)rsp)) != 0xffff)
            {
                zfRateCtrlTxFailEvent(dev, &wd->ap.staTable[i].rcCell, 0,(u32_t)zfPhyCtrlToRate(retryRate));
            }
            zmw_leave_critical_section(dev);
        }
        else
        {
            zmw_enter_critical_section(dev);
            res = zfStaFindOppositeByMACAddr(dev, (u16_t*)rsp, &peerIdx);
            if ( res == 0 )
            {
                zfRateCtrlTxFailEvent(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, 0,(u32_t)zfPhyCtrlToRate(retryRate));
            }
            zmw_leave_critical_section(dev);
        }
    }
    else if (event == 2)
    {
        u32_t retryRate;

        retryRate = (u32_t)(rsp[6]) + (((u32_t)(rsp[7]))<<8)
                + (((u32_t)(rsp[8]))<<16) + (((u32_t)(rsp[9]))<<24);


        if (wd->wlanMode == ZM_MODE_AP)
        {
            zmw_enter_critical_section(dev);
            if ((i=zfApFindSta(dev, (u16_t*)rsp)) != 0xffff)
            {
                zfRateCtrlTxFailEvent(dev, &wd->ap.staTable[i].rcCell, 0,(u32_t)zfPhyCtrlToRate(retryRate));
            }
            zmw_leave_critical_section(dev);

            zfApSendFailure(dev, rsp);
        }
        else
        {
            zmw_enter_critical_section(dev);
            res = zfStaFindOppositeByMACAddr(dev, (u16_t*)rsp, &peerIdx);
            if ( res == 0 )
            {
                zfRateCtrlTxFailEvent(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, 0,(u32_t)zfPhyCtrlToRate(retryRate));
            }
            zmw_leave_critical_section(dev);
        }
    }
    else if (event == 3)
    {
        u32_t retryRate;

        retryRate = (u32_t)(rsp[6]) + (((u32_t)(rsp[7]))<<8)
                + (((u32_t)(rsp[8]))<<16) + (((u32_t)(rsp[9]))<<24);


        if (wd->wlanMode == ZM_MODE_AP)
        {
            zmw_enter_critical_section(dev);
            if ((i=zfApFindSta(dev, (u16_t*)rsp)) != 0xffff)
            {
                zfRateCtrlTxSuccessEvent(dev, &wd->ap.staTable[i].rcCell, zfPhyCtrlToRate(retryRate));
            }
            zmw_leave_critical_section(dev);
        }
        else
        {
            zmw_enter_critical_section(dev);
            res = zfStaFindOppositeByMACAddr(dev, (u16_t*)rsp, &peerIdx);
            if ( res == 0 )
            {
                zfRateCtrlTxSuccessEvent(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, zfPhyCtrlToRate(retryRate));
            }
            zmw_leave_critical_section(dev);
        }
    }
    else if (event == 4)
    {
        u32_t fail;
        u32_t rate;
        peerIdx = 0;

        fail=((u32_t*)rsp)[0] & 0xFFFF;
        rate=((u32_t*)rsp)[0] >> 16;

        if (rate > 15) {
            rate = (rate & 0xF) + 12 + 2;
        }
        else {
            rate = rate + 12;
        }

        zmw_enter_critical_section(dev);
        zfRateCtrlTxFailEvent(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, (u8_t)rate, fail);
        zmw_leave_critical_section(dev);
    }
}
