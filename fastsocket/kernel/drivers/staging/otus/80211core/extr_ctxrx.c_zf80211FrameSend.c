
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
struct TYPE_5__ {int txTraffic; } ;
struct TYPE_4__ {int txMulticastOctets; int txMulticastFrm; int txBroadcastOctets; int txBroadcastFrm; int txUnicastOctets; int txUnicastFrm; } ;
struct TYPE_6__ {TYPE_2__ ledStruct; TYPE_1__ commTally; } ;


 int ZM_EXTERNAL_ALLOC_BUF ;
 int ZM_INTERNAL_ALLOC_BUF ;
 int ZM_SUCCESS ;
 TYPE_3__* wd ;
 int zfHpSend (int *,int*,int,int*,int,int*,int,int *,int,int,int ,int ) ;
 int zfwBufFree (int *,int *,int) ;
 int zfwBufGetSize (int *,int *) ;
 int zm_assert (int ) ;
 int zmw_get_wlan_dev (int *) ;

void zf80211FrameSend(zdev_t* dev, zbuf_t* buf, u16_t* header, u16_t snapLen,
                           u16_t* da, u16_t* sa, u8_t up, u16_t headerLen, u16_t* snap,
                           u16_t* tail, u16_t tailLen, u16_t offset, u16_t bufType,
                           u8_t ac, u8_t keyIdx)
{
    u16_t err;
    u16_t fragLen;

    zmw_get_wlan_dev(dev);

    fragLen = zfwBufGetSize(dev, buf);
    if ((da[0]&0x1) == 0)
    {
        wd->commTally.txUnicastFrm++;
        wd->commTally.txUnicastOctets += (fragLen+snapLen);
    }
    else if (da[0] == 0xffff)
    {
        wd->commTally.txBroadcastFrm++;
        wd->commTally.txBroadcastOctets += (fragLen+snapLen);
    }
    else
    {
        wd->commTally.txMulticastFrm++;
        wd->commTally.txMulticastOctets += (fragLen+snapLen);
    }
    wd->ledStruct.txTraffic++;

    if ((err = zfHpSend(dev, header, headerLen, snap, snapLen,
                        tail, tailLen, buf, offset,
                        bufType, ac, keyIdx)) != ZM_SUCCESS)
    {
        if (bufType == ZM_EXTERNAL_ALLOC_BUF)
        {
            zfwBufFree(dev, buf, err);
        }
        else if (bufType == ZM_INTERNAL_ALLOC_BUF)
        {
            zfwBufFree(dev, buf, 0);
        }
        else
        {
            zm_assert(0);
        }
    }
}
