
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_2__ {scalar_t__ wlanMode; int tick; } ;


 int ZM_ERR_TX_PORT_DISABLED ;
 int ZM_EXTERNAL_ALLOC_BUF ;
 int ZM_LV_1 ;
 int ZM_LV_2 ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_PERFORMANCE_TX_MSDU (int *,int ) ;
 int ZM_PORT_DISABLED ;
 int ZM_SUCCESS ;
 TYPE_1__* wd ;
 int zfApBufferPsFrame (int *,int *,int) ;
 scalar_t__ zfPowerSavingMgrIsSleeping (int *) ;
 int zfPowerSavingMgrWakeup (int *) ;
 int zfPushVtxq (int *) ;
 int zfPutVtxq (int *,int *) ;
 scalar_t__ zfStaIbssPSQueueData (int *,int *) ;
 int zfTxPortControl (int *,int *,int) ;
 int zfTxSendEth (int *,int *,int,int ,int ) ;
 int zfwBufFree (int *,int *,int) ;
 int zm_msg1_tx (int ,char*,int) ;
 int zm_msg2_tx (int ,char*,int) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiTxSendEth(zdev_t* dev, zbuf_t* buf, u16_t port)
{
    u16_t err, ret;

    zmw_get_wlan_dev(dev);

    ZM_PERFORMANCE_TX_MSDU(dev, wd->tick);
    zm_msg1_tx(ZM_LV_2, "zfiTxSendEth(), port=", port);

    if ((err = zfTxPortControl(dev, buf, port)) == ZM_PORT_DISABLED)
    {
        err = ZM_ERR_TX_PORT_DISABLED;
        goto zlError;
    }


    if ((wd->wlanMode == ZM_MODE_AP) && (port < 0x20))
    {

        if ((ret = zfApBufferPsFrame(dev, buf, port)) == 1)
        {
            return ZM_SUCCESS;
        }
    }
    else

    if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
    {
        if ( zfPowerSavingMgrIsSleeping(dev) )
        {

            zfPowerSavingMgrWakeup(dev);
        }
    }
    if (1)
    {

        ret = zfPutVtxq(dev, buf);


        zfPushVtxq(dev);
    }
    else
    {
        ret = zfTxSendEth(dev, buf, port, ZM_EXTERNAL_ALLOC_BUF, 0);
    }

    return ret;




zlError:
    zm_msg2_tx(ZM_LV_1, "Tx Comp err=", err);

    zfwBufFree(dev, buf, err);
    return err;
}
