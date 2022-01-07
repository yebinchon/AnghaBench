
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int adapterState; void* bChannelScan; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 void* FALSE ;
 int TRUE ;
 int ZM_DEFAULT_SUPPORT_RATE_DISCONNECT ;
 int ZM_SCAN_MGR_SCAN_INTERNAL ;



 TYPE_2__* wd ;
 int zfResetSupportRate (int *,int ) ;
 int zfScanMgrScanStop (int *,int ) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u8_t zfChangeAdapterState(zdev_t* dev, u8_t newState)
{
    u8_t ret = TRUE;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();






    switch(newState)
    {
    case 128:
        zfResetSupportRate(dev, ZM_DEFAULT_SUPPORT_RATE_DISCONNECT);


            zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
        break;
    case 129:

            zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
        break;
    case 130:
        break;
    default:
        break;
    }



        zmw_enter_critical_section(dev);
        wd->sta.adapterState = newState;
        zmw_leave_critical_section(dev);

        zm_debug_msg1("change adapter state = ", newState);


    return ret;
}
