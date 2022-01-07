
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
struct zsMicVar {int dummy; } ;
struct TYPE_5__ {TYPE_1__* staTable; struct zsMicVar* bcMicKey; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {int qosType; struct zsMicVar txMicKey; } ;


 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int zfCopyFromIntTxBuffer (int *,int *,int*,int ,int) ;
 int zmw_get_wlan_dev (int *) ;

struct zsMicVar* zfApGetTxMicKey(zdev_t* dev, zbuf_t* buf, u8_t* qosType)
{
    u8_t da[6];
    u16_t id = 0, macAddr[3];

    zmw_get_wlan_dev(dev);

    zfCopyFromIntTxBuffer(dev, buf, da, 0, 6);

    macAddr[0] = da[0] + (da[1] << 8);
    macAddr[1] = da[2] + (da[3] << 8);
    macAddr[2] = da[4] + (da[5] << 8);

    if ((macAddr[0] & 0x1))
    {
        return (&wd->ap.bcMicKey[0]);
    }
    else if ((id = zfApFindSta(dev, macAddr)) != 0xffff)
    {
        *qosType = wd->ap.staTable[id].qosType;
        return (&wd->ap.staTable[id].txMicKey);
    }

    return ((void*)0);
}
