
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
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {int time; } ;


 int ZM_TICK_PER_MINUTE ;
 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfApSendFailure(zdev_t* dev, u8_t* addr)
{
    u16_t id;
    u16_t staAddr[3];
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    staAddr[0] = addr[0] + (((u16_t)addr[1])<<8);
    staAddr[1] = addr[2] + (((u16_t)addr[3])<<8);
    staAddr[2] = addr[4] + (((u16_t)addr[5])<<8);
    zmw_enter_critical_section(dev);
    if ((id = zfApFindSta(dev, staAddr)) != 0xffff)
    {


        wd->ap.staTable[id].time -= (3*ZM_TICK_PER_MINUTE);
    }
    zmw_leave_critical_section(dev);
}
