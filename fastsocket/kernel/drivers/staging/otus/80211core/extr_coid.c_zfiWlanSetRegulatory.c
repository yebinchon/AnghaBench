
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct TYPE_2__ {int frequency; } ;


 TYPE_1__* wd ;
 int zfChGetFirstChannel (int *,int *) ;
 int zfCoreSetFrequency (int *,int ) ;
 int zfHpGetRegulationTablefromCountry (int *,int ) ;
 int zfHpGetRegulationTablefromRegionCode (int *,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanSetRegulatory(zdev_t* dev, u8_t CCS, u16_t Code, u8_t bfirstChannel)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if (CCS)
    {

        zfHpGetRegulationTablefromCountry(dev, Code);
    }
    else
    {

        zfHpGetRegulationTablefromRegionCode(dev, Code);
    }

    if (bfirstChannel) {
        zmw_enter_critical_section(dev);
        wd->frequency = zfChGetFirstChannel(dev, ((void*)0));
        zmw_leave_critical_section(dev);
        zfCoreSetFrequency(dev, wd->frequency);
    }
}
