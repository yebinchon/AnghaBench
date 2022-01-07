
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef size_t u16_t ;
struct TYPE_5__ {TYPE_1__* probingSsidList; } ;
struct TYPE_6__ {TYPE_2__ ws; } ;
struct TYPE_4__ {int ssidLen; int ssid; } ;


 size_t ZM_MAX_PROBE_HIDDEN_SSID_SIZE ;
 TYPE_3__* wd ;
 int zfMemoryCopy (int ,int*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetProbingHiddenSsid(zdev_t* dev, u8_t* ssid, u8_t ssidLen,
    u16_t entry)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();


    if ((ssidLen <= 32) && (entry < ZM_MAX_PROBE_HIDDEN_SSID_SIZE))
    {
        zmw_enter_critical_section(dev);
        wd->ws.probingSsidList[entry].ssidLen = ssidLen;
        zfMemoryCopy(wd->ws.probingSsidList[entry].ssid, ssid, ssidLen);
        zmw_leave_critical_section(dev);
    }

    return;
}
