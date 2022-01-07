
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef scalar_t__ u64_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {scalar_t__ camRollCallTable; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 int ZM_MAC_REG_ROLL_CALL_TBL_H ;
 int ZM_MAC_REG_ROLL_CALL_TBL_L ;
 int ZM_WEP64 ;
 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;
 int zfHpSetDefaultKey (int *,int,int ,int *,int *) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfHpResetKeyCache(zdev_t* dev)
{
    u8_t i;
    u32_t key[4] = {0, 0, 0, 0};
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    for(i=0;i<4;i++)
    {
        zfHpSetDefaultKey(dev, i, ZM_WEP64, key, ((void*)0));
    }
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_ROLL_CALL_TBL_L, 0x00);
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_ROLL_CALL_TBL_H, 0x00);
    zfFlushDelayWrite(dev);

    hpPriv->camRollCallTable = (u64_t) 0;

    return 0;
}
