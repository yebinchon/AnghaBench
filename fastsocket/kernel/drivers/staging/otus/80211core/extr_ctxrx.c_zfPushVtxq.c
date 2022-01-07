
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ flagFreqChanging; scalar_t__ bChannelScan; int ac0PriorityHigherThanAc2; scalar_t__ EnableHT; scalar_t__ bScheduleScan; scalar_t__ flagKeyChanging; scalar_t__ DFSDisableTx; } ;
struct TYPE_4__ {scalar_t__ halState; scalar_t__ wlanMode; int vtxqPushing; int tick; TYPE_1__ sta; int modeMDKEnable; } ;


 scalar_t__ TRUE ;
 int ZM_EXTERNAL_ALLOC_BUF ;
 scalar_t__ ZM_HAL_STATE_INIT ;
 int ZM_INTERNAL_ALLOC_BUF ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_MODE_PSEUDO ;
 int ZM_PERFORMANCE_TX_MPDU (int *,int ) ;
 int ZM_SUCCESS ;
 TYPE_2__* wd ;
 int zfAggTxScheduler (int *,int ) ;
 int * zfGetVmmq (int *) ;
 int * zfGetVtxq (int *,int) ;
 scalar_t__ zfHpGetFreeTxdCount (int *) ;
 int zfHpGetMaxTxdCount (int *) ;
 int zfHpSend (int *,int *,int ,int *,int ,int *,int ,int *,int ,int ,int ,int) ;
 scalar_t__ zfPowerSavingMgrIsSleeping (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfTxSendEth (int *,int *,int ,int ,int ) ;
 int zfwBufFree (int *,int *,int ) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfPushVtxq(zdev_t* dev)
{
    zbuf_t* buf;
    u16_t i;
    u16_t txed;
    u32_t freeTxd;
    u16_t err;
    u16_t skipFlag = 0;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();





    if (wd->halState == ZM_HAL_STATE_INIT)
    {
        if (!wd->modeMDKEnable)
        {
            zm_debug_msg0("HAL is not ready for Tx");
        }
        return;
    }
    else if (wd->sta.DFSDisableTx)
    {
        zm_debug_msg0("return because 802.11h DFS Disable Tx");
        return;
    }
    else if (wd->sta.flagFreqChanging != 0)
    {

        return;
    }
    else if (( wd->sta.flagKeyChanging ) && ( wd->wlanMode != ZM_MODE_AP ))
    {
        return;
    }
    zmw_enter_critical_section(dev);
    if (wd->vtxqPushing != 0)
    {
        skipFlag = 1;
    }
    else
    {
        wd->vtxqPushing = 1;
    }
    zmw_leave_critical_section(dev);

    if (skipFlag == 1)
    {
        return;
    }

    while (1)
    {
        txed = 0;


        while( zfHpGetFreeTxdCount(dev) > 0 )
        {
            if ((buf = zfGetVmmq(dev)) != 0)
            {
                txed = 1;

                if ((err = zfHpSend(dev, ((void*)0), 0, ((void*)0), 0, ((void*)0), 0, buf, 0,
                        ZM_INTERNAL_ALLOC_BUF, 0, 0xff)) != ZM_SUCCESS)
                {
                    zfwBufFree(dev, buf, 0);
                }
            }
            else
            {
                break;
            }
        }
        if ((wd->sta.bScheduleScan) || ((wd->sta.bChannelScan == TRUE) && (zfStaIsConnected(dev))))
        {

            wd->vtxqPushing = 0;
            return;
        }
        for (i=0; i<4; i++)
        {
            if ((freeTxd = zfHpGetFreeTxdCount(dev)) >= 3)
            {
                if ((buf = zfGetVtxq(dev, 3)) != 0)
                {
                    txed = 1;

                    zfTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                    ZM_PERFORMANCE_TX_MPDU(dev, wd->tick);
                }
            }
            else
            {
                break;
            }
        }


        for (i=0; i<3; i++)
        {
            if ((freeTxd = zfHpGetFreeTxdCount(dev)) >= (zfHpGetMaxTxdCount(dev)*1/4))
            {
                if ((buf = zfGetVtxq(dev, 2)) != 0)
                {
                    txed = 1;
                    zfTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                    ZM_PERFORMANCE_TX_MPDU(dev, wd->tick);
                }
                if (wd->sta.ac0PriorityHigherThanAc2 == 1)
                {
                    if ((buf = zfGetVtxq(dev, 0)) != 0)
                    {
                        txed = 1;
                        zfTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                        ZM_PERFORMANCE_TX_MPDU(dev, wd->tick);
                    }
                }
            }
            else
            {
                break;
            }
        }


        for (i=0; i<2; i++)
        {
            if ((freeTxd = zfHpGetFreeTxdCount(dev)) >= (zfHpGetMaxTxdCount(dev)*2/4))
            {
                if ((buf = zfGetVtxq(dev, 0)) != 0)
                {
                    txed = 1;
                    zfTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                    ZM_PERFORMANCE_TX_MPDU(dev, wd->tick);
                }
            }
            else
            {
                break;
            }

        }


        if ((freeTxd = zfHpGetFreeTxdCount(dev)) >= (zfHpGetMaxTxdCount(dev)*3/4))
        {
            if ((buf = zfGetVtxq(dev, 1)) != 0)
            {
                txed = 1;
                zfTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                ZM_PERFORMANCE_TX_MPDU(dev, wd->tick);
            }
        }


        if (txed == 0)
        {
            wd->vtxqPushing = 0;
            return;
        }
    }
}
