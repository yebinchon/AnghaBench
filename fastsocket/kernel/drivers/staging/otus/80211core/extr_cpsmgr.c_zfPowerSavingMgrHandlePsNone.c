
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_5__ {TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;






 TYPE_3__* wd ;
 int zfStaIsConnected (int *) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

__attribute__((used)) static u16_t zfPowerSavingMgrHandlePsNone(zdev_t* dev, u8_t *isWakeUpRequired)
{
    u16_t ret = 0;
    zmw_get_wlan_dev(dev);

    switch(wd->sta.psMgr.state)
    {
        case 131:
            *isWakeUpRequired = 0;
            break;

        case 129:
        case 128:
        case 130:
        default:
            *isWakeUpRequired = 1;
zm_debug_msg0("zfPowerSavingMgrHandlePsNone: Wake up now\n");
            if ( zfStaIsConnected(dev) )
            {
                zm_debug_msg0("zfPowerSavingMgrOnHandleT1 send Null data\n");

                ret = 1;
            }

            wd->sta.psMgr.state = 131;
            break;
    }
    return ret;
}
