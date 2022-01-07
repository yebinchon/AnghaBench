
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_4__ {int isSleepAllowed; int sleepAllowedtick; scalar_t__ tempWakeUp; int state; } ;
struct TYPE_5__ {int powerSaveMode; int aid; int qosInfo; int uapsdQ; TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int ZM_BIT_0 ;
 int ZM_EXTERNAL_ALLOC_BUF ;
 int ZM_PS_MSG_STATE_S1 ;



 int ZM_STA_PS_NONE ;
 int ZM_WLAN_EID_TIM ;
 TYPE_3__* wd ;
 int zfFindElement (int *,int *,int ) ;
 int zfPowerSavingMgrMain (int *) ;
 int * zfQueueGet (int *,int ) ;
 int zfSendNullData (int *,int ) ;
 int zfSendPSPoll (int *) ;
 int zfTxSendEth (int *,int *,int ,int ,int ) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

void zfPowerSavingMgrProcessBeacon(zdev_t* dev, zbuf_t* buf)
{
    u8_t length, bitmap;
    u16_t offset, n1, n2, q, r;
    zbuf_t* psBuf;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    if ( wd->sta.powerSaveMode == ZM_STA_PS_NONE )

    {
        return;
    }

    wd->sta.psMgr.isSleepAllowed = 1;

    if ( (offset=zfFindElement(dev, buf, ZM_WLAN_EID_TIM)) != 0xffff )
    {
        length = zmw_rx_buf_readb(dev, buf, offset+1);

        if ( length > 3 )
        {
            n1 = zmw_rx_buf_readb(dev, buf, offset+4) & (~ZM_BIT_0);
            n2 = length + n1 - 4;
            q = wd->sta.aid >> 3;
            r = wd->sta.aid & 7;

            if ((q >= n1) && (q <= n2))
            {
                bitmap = zmw_rx_buf_readb(dev, buf, offset+5+q-n1);

                if ( (bitmap >> r) & ZM_BIT_0 )
                {

                    if ( 0 )
                    {
                        wd->sta.psMgr.state = ZM_PS_MSG_STATE_S1;

                        zfSendNullData(dev, 0);
                    }
                    else
                    {
                        if ((wd->sta.qosInfo&0xf) != 0xf)
                        {



                            wd->sta.psMgr.isSleepAllowed = 0;

                            switch (wd->sta.powerSaveMode)
                            {
                            case 128:
                            case 130:

                                zfSendPSPoll(dev);
                                break;
                            case 129:
                                zm_debug_msg0("wake up and send null data\n");

                                zmw_enter_critical_section(dev);
                                wd->sta.psMgr.sleepAllowedtick = 400;
                                zmw_leave_critical_section(dev);

                                zfSendNullData(dev, 0);
                                break;
                            }

                            wd->sta.psMgr.tempWakeUp = 0;
                        }
                    }
                }
            }
        }
    }

    while ((psBuf = zfQueueGet(dev, wd->sta.uapsdQ)) != ((void*)0))
    {
        zfTxSendEth(dev, psBuf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
    }


    zfPowerSavingMgrMain(dev);
}
