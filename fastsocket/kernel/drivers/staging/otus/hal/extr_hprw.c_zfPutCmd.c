
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
struct zsHpPriv {int cmdTail; int cmdHead; TYPE_1__* cmdQ; } ;
struct TYPE_4__ {struct zsHpPriv* hpPrivate; } ;
struct TYPE_3__ {int cmdLen; int src; int * cmd; int * buf; } ;


 int ZM_CMD_QUEUE_SIZE ;
 int ZM_MAX_CMD_SIZE ;
 TYPE_2__* wd ;
 int zm_assert (int) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfPutCmd(zdev_t* dev, u32_t* cmd, u16_t cmdLen, u16_t src, u8_t* buf)
{
    u16_t i;
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;


    zm_assert(cmdLen <= ZM_MAX_CMD_SIZE);


    if (((hpPriv->cmdTail+1) & (ZM_CMD_QUEUE_SIZE-1)) == hpPriv->cmdHead ) {
        zm_debug_msg0("CMD queue full!!");
        return 0;
    }

    hpPriv->cmdQ[hpPriv->cmdTail].cmdLen = cmdLen;
    hpPriv->cmdQ[hpPriv->cmdTail].src = src;
    hpPriv->cmdQ[hpPriv->cmdTail].buf = buf;
    for (i=0; i<(cmdLen>>2); i++)
    {
        hpPriv->cmdQ[hpPriv->cmdTail].cmd[i] = cmd[i];
    }

    hpPriv->cmdTail = (hpPriv->cmdTail+1) & (ZM_CMD_QUEUE_SIZE-1);

    return 0;
}
