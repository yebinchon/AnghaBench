
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u16_t ;
struct TYPE_6__ {TYPE_1__* entity; } ;
struct TYPE_7__ {size_t ibssPSDataCount; size_t ibssPrevPSDataCount; int * ibssPSDataQueue; TYPE_2__ staPSList; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_3__ sta; } ;
struct TYPE_5__ {scalar_t__ bDataQueued; scalar_t__ macAddr; scalar_t__ bUsed; } ;


 scalar_t__ FALSE ;
 int ZM_EXTERNAL_ALLOC_BUF ;
 size_t ZM_MAX_PS_STA ;
 scalar_t__ ZM_MODE_IBSS ;
 int ZM_WLAN_FRAME_TYPE_ATIM ;
 TYPE_4__* wd ;
 int zfSendMmFrame (int *,int ,int*,int ,int ,int ) ;
 int zfStaIsConnected (int *) ;
 int zfTxSendEth (int *,int ,int ,int ,int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfStaIbssPSSend(zdev_t* dev)
{
    u8_t i;
    u16_t bcastAddr[3] = {0xffff, 0xffff, 0xffff};

    zmw_get_wlan_dev(dev);

    if ( !zfStaIsConnected(dev) )
    {
        return ;
    }

    if ( wd->wlanMode != ZM_MODE_IBSS )
    {
        return ;
    }

    for(i=0; i<ZM_MAX_PS_STA; i++)
    {
        if ( wd->sta.staPSList.entity[i].bDataQueued )
        {
            if ( i == 0 )
            {
                zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_ATIM,
                              bcastAddr,
                              0, 0, 0);
            }
            else if ( wd->sta.staPSList.entity[i].bUsed )
            {

                zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_ATIM,
                              (u16_t*) wd->sta.staPSList.entity[i].macAddr,
                              0, 0, 0);
            }

            wd->sta.staPSList.entity[i].bDataQueued = FALSE;
        }
    }

    for(i=0; i<wd->sta.ibssPSDataCount; i++)
    {
        zfTxSendEth(dev, wd->sta.ibssPSDataQueue[i], 0,
                    ZM_EXTERNAL_ALLOC_BUF, 0);
    }

    wd->sta.ibssPrevPSDataCount = wd->sta.ibssPSDataCount;
    wd->sta.ibssPSDataCount = 0;
}
