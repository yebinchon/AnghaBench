
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef size_t u16_t ;
struct TYPE_7__ {size_t regDmnEnum; scalar_t__ isoName; } ;
struct TYPE_5__ {size_t regionCode; } ;
struct TYPE_6__ {TYPE_1__ regulationTable; } ;


 size_t N (TYPE_3__*) ;
 TYPE_3__* allCountries ;
 TYPE_2__* wd ;
 int zfHpGetRegulationTable (int *,size_t,size_t,size_t) ;
 scalar_t__ zfMemoryIsEqual (int*,int*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfHpGetRegulationTablefromISO(zdev_t* dev, u8_t *countryInfo, u8_t length)
{
    u16_t i;
    u16_t RegDomain;
    u16_t c_lo = 2000, c_hi = 6000;


    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if (countryInfo[4] != 0x20)
    {

    }

    for (i = 0; i < N(allCountries); i++)
    {

        if (zfMemoryIsEqual((u8_t *)allCountries[i].isoName, (u8_t *)&countryInfo[2], length-1))
        {



            RegDomain = allCountries[i].regDmnEnum;

            if (wd->regulationTable.regionCode != RegDomain)
            {
                zfHpGetRegulationTable(dev, RegDomain, c_lo, c_hi);
            }
            return 0;
        }
    }

    return 1;
}
