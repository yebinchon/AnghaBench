
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
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {struct zsMicVar rxMicKey; } ;


 int ZM_WLAN_HEADER_A2_OFFSET ;
 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int zfCopyFromRxBuffer (int *,int *,int*,int ,int) ;
 int zmw_get_wlan_dev (int *) ;

struct zsMicVar* zfApGetRxMicKey(zdev_t* dev, zbuf_t* buf)
{
    u8_t sa[6];
    u16_t id = 0, macAddr[3];

    zmw_get_wlan_dev(dev);

    zfCopyFromRxBuffer(dev, buf, sa, ZM_WLAN_HEADER_A2_OFFSET, 6);

    macAddr[0] = sa[0] + (sa[1] << 8);
    macAddr[1] = sa[2] + (sa[3] << 8);
    macAddr[2] = sa[4] + (sa[5] << 8);

    if ((id = zfApFindSta(dev, macAddr)) != 0xffff)
        return (&wd->ap.staTable[id].rxMicKey);

    return ((void*)0);
}
