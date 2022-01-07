
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {size_t cmdTail; size_t cmdHead; TYPE_1__* cmdQ; } ;
struct TYPE_4__ {struct zsHpPriv* hpPrivate; } ;
struct TYPE_3__ {int cmdLen; int src; int * cmd; int * buf; } ;


 int ZM_CMD_QUEUE_SIZE ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfGetCmd(zdev_t* dev, u32_t* cmd, u16_t* cmdLen, u16_t* src, u8_t** buf)
{
    u16_t i;
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    if (hpPriv->cmdTail == hpPriv->cmdHead)
    {
        return 3;
    }

    *cmdLen = hpPriv->cmdQ[hpPriv->cmdHead].cmdLen;
    *src = hpPriv->cmdQ[hpPriv->cmdHead].src;
    *buf = hpPriv->cmdQ[hpPriv->cmdHead].buf;
    for (i=0; i<((*cmdLen)>>2); i++)
    {
        cmd[i] = hpPriv->cmdQ[hpPriv->cmdHead].cmd[i];
    }

    hpPriv->cmdHead = (hpPriv->cmdHead+1) & (ZM_CMD_QUEUE_SIZE-1);

    return 0;
}
