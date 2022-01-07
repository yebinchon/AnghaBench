
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u64_t ;
typedef int u32_t ;
struct zsHpPriv {int camRollCallTable; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 int ZM_MAC_REG_ROLL_CALL_TBL_H ;
 int ZM_MAC_REG_ROLL_CALL_TBL_L ;
 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,int ,int ) ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpSetRollCallTable(zdev_t* dev)
{
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    if (hpPriv->camRollCallTable != (u64_t) 0)
    {
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_ROLL_CALL_TBL_L, (u32_t)(hpPriv->camRollCallTable & 0xffffffff));
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_ROLL_CALL_TBL_H, (u32_t)((hpPriv->camRollCallTable >> 32) & 0xffffffff));
        zfFlushDelayWrite(dev);
    }
}
