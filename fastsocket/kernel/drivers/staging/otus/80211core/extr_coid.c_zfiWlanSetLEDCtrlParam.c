
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
struct TYPE_3__ {void* LEDCtrlFlagFromReg; void* LEDCtrlType; } ;
struct TYPE_4__ {TYPE_1__ ledStruct; } ;


 TYPE_2__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetLEDCtrlParam(zdev_t* dev, u8_t type, u8_t flag)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    wd->ledStruct.LEDCtrlType = type;
    wd->ledStruct.LEDCtrlFlagFromReg = flag;
    zmw_leave_critical_section(dev);
}
